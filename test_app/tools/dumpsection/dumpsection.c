/*
	dumps a section in binary of an elf to a file
*/


#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char* argv[])
{
	if (argc < 5)
	{
		printf("usage:\n\t%s <input object file> <output binary file> <section name> <readelf command name>\n", 
			argv[0]);
		return 0;
	}

	FILE* fp;
	char path[1035];

	// open command
	char cmd[256];
	sprintf(cmd, "%s -e %s | grep %s", argv[4], argv[1], argv[3]);
	fp = popen(cmd, "r");
	if (fp == NULL)
	{
		printf("failed to run '%s'\n", cmd);
		return 0;
	}

	// read output (single line)
	while (fgets(path, sizeof(path)-1, fp) != NULL);

	// example output from above
	// Name              Type            Addr     Off    Size   ES Flg Lk Inf Al
	// .vudata           PROGBITS        00000000 000034 000064 00  WA  0   0  1
	int section_found = 0;
	int section_found_off = 0;
	int done = 0;
	int section_offset, section_size;

	char* state;
	char* token = strtok_r(path, " ", &state);
	while (token != NULL)
	{
		if (done)
			break;

		if (strcmp(argv[3], token) == 0)
			section_found = 1;

		if (section_found)
		{
			switch (section_found_off)
			{
				// section offset
				case 3:
					section_offset = (int)strtol(token, NULL, 16);
					break;

				// section size
				case 4:
					section_size = (int)strtol(token, NULL, 16);
					done = 1;	// got offset and size. don't need any more.
					break;
			}

			section_found_off++;
		}

		token = strtok_r(NULL, "  ", &state);
	}

	pclose(fp);


	fp = fopen(argv[1], "rb");
	if (fp == NULL)
	{
		printf("failed to open '%s'\n", argv[1]);
		return 0;
	}

	FILE* outfp = fopen(argv[2], "wb");
	if (outfp == NULL)
	{
		printf("failed to open '%s'\n", argv[2]);
		return 0;
	}

	char* buf = (char*)calloc(section_size, 1);

	// read section
	fseek(fp, section_offset, SEEK_SET);
	fread(buf, 1, section_size, fp);

	// write section to file
	fwrite(buf, 1, section_size, outfp);

	free(buf);
	fclose(fp);
	fclose(outfp);

	return 0;
}
