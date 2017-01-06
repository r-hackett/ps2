
#include <kernel.h>
#include <tamtypes.h>
#include <stdio.h>

#include <gif_tags.h>

#include <gs_gp.h>
#include <gs_psm.h>

#include <dma.h>
#include <dma_tags.h>

#include <draw.h>
#include <graph.h>
#include <packet.h>

#include "vutest.h"
#include "lizard.h"
#include "bmfont_reader.h"
#include "courier_new.h"
#include "courier_new_0.h"

#define 	FB_WIDTH				512
#define 	FB_HEIGHT				288
#define 	MEM_ALIGN(alignment) 	__attribute__((aligned(alignment)))

#define 	DMA_BUF_SIZE			0x100000

#define 	VU1_MICRO_MEM_START		0x11008000
#define 	VU1_MICRO_MEM_END		0x1100c000


unsigned char dma_buffer[DMA_BUF_SIZE] MEM_ALIGN(16);

static void upload_vu1_prog(int dest, const u8* start, const u8* end)
{
	volatile u8* dest_it = (u8*)((u32)(VU1_MICRO_MEM_START) + (dest & 0x3fff));

	while ((u32*)start < (u32*)end)
		*dest_it++ = *start++;
}

static void init_gs(framebuffer_t *frame, zbuffer_t *z, texbuffer_t *texbuf)
{	
	upload_vu1_prog(0, vutest, (u8*)((int)vutest) + vutest_size);

	frame->width = FB_WIDTH;
	frame->height = FB_HEIGHT;
	frame->mask = 0;
	frame->psm = GS_PSM_32;

	// Allocate some vram for our framebuffer
	frame->address = graph_vram_allocate(frame->width,frame->height, frame->psm, GRAPH_ALIGN_PAGE);

	// Disable the zbuffer.
	z->enable = 0;
	z->address = 0;
	z->mask = 0;
	z->zsm = 0;

	// Initialize the screen and tie the framebuffer to the read circuits.
	graph_initialize(frame->address,frame->width,frame->height,frame->psm,0,0);
}

static void init_drawing_environment(packet_t *packet, framebuffer_t *frame, zbuffer_t *z)
{
	qword_t *q = packet->data;

	q = draw_setup_environment(q,0,frame,z);
	q = draw_primitive_xyoffset(q,0,(2048),(2048));
	q = draw_finish(q);

	dma_channel_send_normal(DMA_CHANNEL_GIF,packet->data,q - packet->data, 0, 0);

	draw_wait_finish();

}

void bmfont_char_rect(bmfont_t* bmfont, char c, texrect_t* rect)
{
	int i = 0;
	int found = 0;
	while (i++ < bmfont->char_tag_count)
	{
		if (bmfont->character[i].id == (int)c)
		{
			found = 1;
			break;
		}
	}
	if (!found)
		return;

	int x = bmfont->character[i].x;
	int y = bmfont->character[i].y;

	rect->v0.x = 0.0f; 	rect->v0.y = 0.0f;	rect->v0.z = 0.0f;
	rect->t0.u = 0.0f;	rect->t0.v = 0.0f;	

	rect->v1.x = bmfont->common.scalew;	rect->v1.y = bmfont->common.scaleh;	rect->v1.z = 0.0;
	rect->t1.u = bmfont->common.scalew; 	rect->t1.v = bmfont->common.scaleh;

	rect->color.r = 0xff; 	rect->color.g = 0xff;
	rect->color.b = 0xff; 	rect->color.a = 0xff;
}

static void render(packet_t *packet, framebuffer_t *frame)
{
	qword_t *q = packet->data;

	graph_wait_vsync();

	dma_wait_fast();

	q = packet->data;
	q = draw_clear(q,0,0,0,frame->width,frame->height,0x40,0x40,0x40);
	q = draw_finish(q);

	dma_channel_send_normal(DMA_CHANNEL_GIF,packet->data, q - packet->data, 0, 0);
	dma_wait_fast();


	texrect_t rect;
	//bmfont_char_rect(bmfont, 'a', &rect);



	q = draw_rect_textured(q, 0, &rect);

	q = draw_finish(q);

	dma_channel_send_normal(DMA_CHANNEL_GIF,packet->data,q - packet->data, 0, 0);
	draw_wait_finish();
}

int main(void)
{
	// single buffered rendering.
	framebuffer_t frame;
	zbuffer_t z;
	texbuffer_t texbuf;

	packet_t *packet = packet_init(200,PACKET_NORMAL);

	dma_channel_initialize(DMA_CHANNEL_GIF,NULL,0);
	dma_channel_fast_waits(DMA_CHANNEL_GIF);

	init_gs(&frame,&z,&texbuf);
	init_drawing_environment(packet,&frame,&z);

	//load_texture(&texbuf, courier_new_0);
	//setup_texture(&texbuf);

	for(;;)
		render(packet,&frame);

	graph_vram_free(frame.address);
	packet_free(packet);
	graph_shutdown();
	dma_channel_shutdown(DMA_CHANNEL_GIF,0);

	SleepThread();

	return 0;

}
