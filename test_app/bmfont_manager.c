#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "bmfont_reader.h"
#include "texture.h"

/*
	Decode a bmfont .fnt file to a bmfont_t structure and loads
	the texture to gs memory.
*/
void load_bmfont(bmfont_t* bmfont, const char* bmfont_str)
{
	bmfont_decode_str(bmfont_str, &bmfont);
	bmfont_print(&bmfont);
}