#ifndef _TEXTURE_H_
#define _TEXTURE_H_

#include <draw.h>
#include <draw3d.h>

void alloc_texture(int width, int height, int psm, texbuffer_t *texbuf);
void load_texture(int width, int height, int psm, texbuffer_t *texbuf, const char* data);
void setup_texture(int width, int height, texbuffer_t *texbuf);

#endif /* _TEXTURE_H_ */