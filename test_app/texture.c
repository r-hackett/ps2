#include <kernel.h>
#include <stdlib.h>
#include <tamtypes.h>
#include <math3d.h>

#include <packet.h>

#include <dma_tags.h>
#include <gif_tags.h>
#include <gs_psm.h>

#include <dma.h>

#include <graph.h>

#include <draw.h>
#include <draw3d.h>

#include "bmfont_reader.h"


void alloc_texture(int width, int height, int psm, texbuffer_t *texbuf)
{
	texbuf->width = width;
	texbuf->psm = GS_PSM_24;
	texbuf->address = graph_vram_allocate(width,height,psm,GRAPH_ALIGN_BLOCK);
}

void load_texture(int width, int height, int psm, texbuffer_t *texbuf, const char* data)
{
	packet_t *packet = packet_init(50,PACKET_NORMAL);

	qword_t *q = packet->data;

	q = packet->data;

	q = draw_texture_transfer(q,(void*)data,width,height,psm,texbuf->address,texbuf->width);
	q = draw_texture_flush(q);

	dma_channel_send_chain(DMA_CHANNEL_GIF,packet->data, q - packet->data, 0,0);
	dma_wait_fast();

	packet_free(packet);
}

// GS_PSM_24
void setup_texture(int width, int height, texbuffer_t *texbuf)
{
	packet_t *packet = packet_init(10,PACKET_NORMAL);

	qword_t *q = packet->data;

	// Using a texture involves setting up a lot of information.
	clutbuffer_t clut;

	lod_t lod;

	lod.calculation = LOD_USE_K;
	lod.max_level = 0;
	lod.mag_filter = LOD_MAG_NEAREST;
	lod.min_filter = LOD_MIN_NEAREST;
	lod.l = 0;
	lod.k = 0;

	texbuf->info.width = draw_log2(width);
	texbuf->info.height = draw_log2(height);
	texbuf->info.components = TEXTURE_COMPONENTS_RGB;
	texbuf->info.function = TEXTURE_FUNCTION_DECAL;

	clut.storage_mode = CLUT_STORAGE_MODE1;
	clut.start = 0;
	clut.psm = 0;
	clut.load_method = CLUT_NO_LOAD;
	clut.address = 0;

	q = draw_texture_sampling(q,0,&lod);
	q = draw_texturebuffer(q,0,texbuf,&clut);

	// Now send the packet, no need to wait since it's the first.
	dma_channel_send_normal(DMA_CHANNEL_GIF,packet->data,q - packet->data, 0, 0);
	dma_wait_fast();

	packet_free(packet);

}
