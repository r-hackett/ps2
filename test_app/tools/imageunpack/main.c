#include "lodepng.h"

/*
	decode a PNG from a file to RGB24 pixel data.
*/

#include <stdio.h>
#include <stdlib.h>


void decode_png(const char* infilename, const char* outfilename)
{
	unsigned error;
	unsigned char* image;
	unsigned width, height;

  	error = lodepng_decode24_file(&image, &width, &height, infilename);
  	if(error) 
  	{
  		printf("error %u: %s\n", error, lodepng_error_text(error));
  		free(image);
  		return;
  	}

  	FILE* fpout = fopen(outfilename, "wb");
  	if (fpout == NULL)
  	{
  		printf("failed to open '%s'\n", outfilename);
  		return;
  	}

  	fseek(fpout, 0, SEEK_SET);
	fwrite(image, 1, width * height * 3, fpout);

	fclose(fpout);
	free(image);
}


int main(int argc, char *argv[])
{
	if (argc < 2)
	{
		printf("usage:\n\t%s <input png file name> <output png file name>\n", argv[0]);
		return 0;
	}

	decode_png(argv[1], argv[2]);

	return 0;
}


