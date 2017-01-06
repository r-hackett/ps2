/*
	A small library to parse angelcode's bmfont .fnt files.

	Jargon...
		tag: First word/name in a line
		tag value: The value of a word/name that comes after the 'tag' 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "bmfont_reader.h"

#define MAX_LINES 			(2048*4)


#if 0
/*
	Typically unneeded due to the way the state machine eats whitespace.
*/
static char* skipwhitespace(const char* str)
{
	while (*str && *str == ' ') str++;
	return (char*)str;
}
#endif

// yuck...
static char* itos(int val)
{
	static char buf[256];
	sprintf(buf, "%d", val);
	return buf;
}

/*
	Copies contents of the first quoted string from 'in' to 'out' (not including quotes) 
	and returns a pointer to the character after the end quote.
*/ 
static char* consume_quoted_string(const char* in, char* out)
{
	bmfont_bool start_found = 0;
	int out_it = 0;

	while (1)
	{
		if (*in == (char)NULL)
			return (char*)in;
		else if (*in == '\"')
		{
			if (start_found)
			{
				out[out_it] = '\0';
				break;
			}

			start_found = 1;
		}
		else 
		{
			if (start_found)
				out[out_it++] = *in;
		}

		in++;
	}

	return ((char*)in + 1);
}

/*
	Reads an integer in base 10 from string 'in', then converts and stores it in integer 'out'. 
	Returns a pointer to the character after the last digit.
*/
static char* consume_integer(const char* in, int* out)
{
	char buf[256];
	int buf_it = 0;

	while (1)
	{
		if (*in == (char)NULL)
			break;
		else if (*in == '-')	// don't forget negatives
		{
			buf[buf_it++] = '-';
		}
		else if ((*in >= '0') && (*in <= '9'))
		{
			buf[buf_it++] = *in;
		}
		else 
		{
			break;
		}

		in++;
	}

	buf[buf_it] = '\0';
	
	if (out)
		*out = (int)strtol(buf, NULL, 10);

	return (char*)in;
}

static void init_bmfont(bmfont_t* bmfont)
{
	bmfont->char_tag_count = 0;

	bmfont->info.font[0] = 0;
	bmfont->info.size = NOT_SET;
	bmfont->info.bold = NOT_SET;
	bmfont->info.italic = NOT_SET;
	bmfont->info.charset[0] = 0;
	bmfont->info.unicode = NOT_SET;
	bmfont->info.stretchh = NOT_SET;
	bmfont->info.aa = NOT_SET;
	bmfont->info.pad_up = NOT_SET;
	bmfont->info.pad_right = NOT_SET;
	bmfont->info.pad_left = NOT_SET;
	bmfont->info.pad_down = NOT_SET;
	bmfont->info.space_horizontal = NOT_SET;
	bmfont->info.space_vertical = NOT_SET;	

	bmfont->common.lineheight = NOT_SET;
	bmfont->common.base = NOT_SET;
	bmfont->common.scalew = NOT_SET;
	bmfont->common.scaleh = NOT_SET;
	bmfont->common.pages = NOT_SET;
	bmfont->common.packed = NOT_SET;
	bmfont->common.alphachnl = NOT_SET;
	bmfont->common.redchnl = NOT_SET;
	bmfont->common.greenchnl = NOT_SET;
	bmfont->common.bluechnl = NOT_SET;

	bmfont->page.id = NOT_SET;
	bmfont->page.file[0] = 0;

	bmfont->chars.count = NOT_SET;

	int i;
	for (i = 0; i < 256; i++)
	{
		bmfont->character[i].id = NOT_SET;
		bmfont->character[i].x = NOT_SET;
		bmfont->character[i].y = NOT_SET;
		bmfont->character[i].width = NOT_SET;
		bmfont->character[i].height = NOT_SET;
		bmfont->character[i].xoffset = NOT_SET;
		bmfont->character[i].yoffset = NOT_SET;
		bmfont->character[i].xadvance = NOT_SET;
		bmfont->character[i].page = NOT_SET;
		bmfont->character[i].chnl = NOT_SET;
	}
}

#define	PRINTF_ARG_INT(tag, tag_value_name) \
	(bmfont->tag.tag_value_name != NOT_SET ? itos(bmfont->tag.tag_value_name) : "<not set>")
#define	PRINTF_ARG_STR(tag, tag_value_name)	\
	(bmfont->tag.tag_value_name[0] ? bmfont->tag.tag_value_name : "<not set>")
void bmfont_print(bmfont_t* bmfont)
{ 
	printf("info\n");
	printf("\tfont=%s\n", PRINTF_ARG_STR(info, font));
	printf("\tsize=%s\n", PRINTF_ARG_INT(info, size));
	printf("\tbold=%s\n", PRINTF_ARG_INT(info, bold));
	printf("\titalic=%s\n", PRINTF_ARG_INT(info, italic));
	printf("\tcharset=%s\n", PRINTF_ARG_STR(info, charset));
	printf("\tunicode=%s\n", PRINTF_ARG_INT(info, unicode));
	printf("\tstretchh=%s\n", PRINTF_ARG_INT(info, stretchh));
	printf("\tsmooth=%s\n", PRINTF_ARG_INT(info, smooth));
	printf("\taa=%s\n", PRINTF_ARG_INT(info, aa));
	printf("\tpadding=%s,%s,%s,%s\n", 
		PRINTF_ARG_INT(info, pad_up), 
		PRINTF_ARG_INT(info, pad_right),
		PRINTF_ARG_INT(info, pad_down),
		PRINTF_ARG_INT(info, pad_left));
	printf("spacing=%s,%s\n", 
		PRINTF_ARG_INT(info, space_horizontal), 
		PRINTF_ARG_INT(info, space_vertical));
	printf("\toutline=%s\n", PRINTF_ARG_INT(info, outline));

	printf("common\n");
	printf("\tlineheight=%s\n", PRINTF_ARG_INT(common, lineheight));
	printf("\tbase=%s\n", PRINTF_ARG_INT(common, base));
	printf("\tscalew=%s\n", PRINTF_ARG_INT(common, scalew));
	printf("\tscaleh=%s\n", PRINTF_ARG_INT(common, scaleh));
	printf("\tpages=%s\n", PRINTF_ARG_INT(common, pages));
	printf("\tpacked=%s\n", PRINTF_ARG_INT(common, packed));
	printf("\talphachnl=%s\n", PRINTF_ARG_INT(common, alphachnl));
	printf("\tredchnl=%s\n", PRINTF_ARG_INT(common, redchnl));
	printf("\tgreenchnl=%s\n", PRINTF_ARG_INT(common, greenchnl));
	printf("\tbluechnl=%s\n", PRINTF_ARG_INT(common, bluechnl));

	printf("page\n");
	printf("\tid=%s\n", PRINTF_ARG_INT(page, id));
	printf("\tfile=%s\n", PRINTF_ARG_STR(page, file));

	printf("chars\n");
	printf("\tcount=%s\n", PRINTF_ARG_INT(chars, count));

	int i;
	for (i = 0; i < bmfont->char_tag_count; i++)
	{
		printf("char[%d]\n", i);
		printf("\tid=%s\n", PRINTF_ARG_INT(character[i], id));
		printf("\tx=%s\n", PRINTF_ARG_INT(character[i], x));
		printf("\ty=%s\n", PRINTF_ARG_INT(character[i], y));
		printf("\twidth=%s\n", PRINTF_ARG_INT(character[i], width));
		printf("\theight=%s\n", PRINTF_ARG_INT(character[i], height));
		printf("\txoffset=%s\n", PRINTF_ARG_INT(character[i], xoffset));
		printf("\tyoffset=%s\n", PRINTF_ARG_INT(character[i], yoffset));
		printf("\txadvance=%s\n", PRINTF_ARG_INT(character[i], xadvance));
		printf("\tpage=%s\n", PRINTF_ARG_INT(character[i], page));
		printf("\tchnl=%s\n", PRINTF_ARG_INT(character[i], chnl));
	}	
}
#undef PRINTF_ARGS_INT
#undef PRINTF_ARGS_STR

#define UNKNOWN_TAG_VALUE_NAME(tag, tag_value_name) \
		printf("Unknown BMFont '%s' tag value '%s'. Stopping.\n", tag, tag_value_name); \
		for(;;)

static char* parse_info_tag(const char* tag_value_name, const char* buf, bmfont_t* bmfont)
{
	if (strcmp(tag_value_name, "font") == 0 || strcmp(tag_value_name, "face") == 0)
	{
		buf = consume_quoted_string(buf, bmfont->info.font);
	}
	else if (strcmp(tag_value_name, "size") == 0)
	{
		buf = consume_integer(buf, &bmfont->info.size);							
	}
	else if (strcmp(tag_value_name, "bold") == 0)
	{
		buf = consume_integer(buf, &bmfont->info.bold);	
	}
	else if (strcmp(tag_value_name, "italic") == 0)
	{
		buf = consume_integer(buf, &bmfont->info.italic);	
	}
	else if (strcmp(tag_value_name, "charset") == 0)
	{
		buf = consume_quoted_string(buf, bmfont->info.charset);
	}
	else if (strcmp(tag_value_name, "unicode") == 0)
	{
		buf = consume_integer(buf, &bmfont->info.unicode);	
	}
	else if (strcmp(tag_value_name, "stretchH") == 0)
	{
		buf = consume_integer(buf, &bmfont->info.stretchh);	
	}
	else if (strcmp(tag_value_name, "smooth") == 0)
	{
		buf = consume_integer(buf, &bmfont->info.smooth);	
	}
	else if (strcmp(tag_value_name, "aa") == 0)
	{
		buf = consume_integer(buf, &bmfont->info.aa);	
	}
	else if (strcmp(tag_value_name, "padding") == 0)
	{
		buf = consume_integer(buf, &bmfont->info.pad_up) + 1;
		buf = consume_integer(buf, &bmfont->info.pad_right) + 1;
		buf = consume_integer(buf, &bmfont->info.pad_left) + 1;
		buf = consume_integer(buf, &bmfont->info.pad_down);
	}
	else if (strcmp(tag_value_name, "spacing") == 0)
	{
		buf = consume_integer(buf, &bmfont->info.space_horizontal) + 1;
		buf = consume_integer(buf, &bmfont->info.space_vertical);
	}
	else if (strcmp(tag_value_name, "outline") == 0)
	{
		buf = consume_integer(buf, &bmfont->info.outline);
	}
	else
	{
		UNKNOWN_TAG_VALUE_NAME("info", tag_value_name);
	}

	return (char*)buf;
}

static char* parse_common_tag(const char* tag_value_name, const char* buf, bmfont_t* bmfont)
{
	if (strcmp(tag_value_name, "lineHeight") == 0)
	{
		buf = consume_integer(buf, &bmfont->common.lineheight);	
	}
	else if (strcmp(tag_value_name, "base") == 0)
	{
		buf = consume_integer(buf, &bmfont->common.base);	
	}
	else if (strcmp(tag_value_name, "scaleW") == 0)
	{
		buf = consume_integer(buf, &bmfont->common.scalew);	
	}	
	else if (strcmp(tag_value_name, "scaleH") == 0)
	{
		buf = consume_integer(buf, &bmfont->common.scaleh);	
	}
	else if (strcmp(tag_value_name, "pages") == 0)
	{
		buf = consume_integer(buf, &bmfont->common.pages);	
	}
	else if (strcmp(tag_value_name, "packed") == 0)
	{
		buf = consume_integer(buf, &bmfont->common.packed);	
	}
	else if (strcmp(tag_value_name, "alphaChnl") == 0)
	{
		buf = consume_integer(buf, &bmfont->common.alphachnl);
	}
	else if (strcmp(tag_value_name, "redChnl") == 0)
	{
		buf = consume_integer(buf, &bmfont->common.redchnl);	
	}
	else if (strcmp(tag_value_name, "greenChnl") == 0)
	{
		buf = consume_integer(buf, &bmfont->common.greenchnl);	
	}																														
	else if (strcmp(tag_value_name, "blueChnl") == 0)
	{
		buf = consume_integer(buf, &bmfont->common.bluechnl);	
	}																				
	else
	{
		UNKNOWN_TAG_VALUE_NAME("common", tag_value_name);
	}	

	return (char*)buf;
}

static char* parse_page_tag(const char* tag_value_name, const char* buf, bmfont_t* bmfont)
{
	if (strcmp(tag_value_name, "id") == 0)
	{
		buf = consume_integer(buf, &bmfont->page.id);	
	}																				
	else if (strcmp(tag_value_name, "file") == 0)
	{
		buf = consume_quoted_string(buf, bmfont->page.file);
	}
	else
	{
		UNKNOWN_TAG_VALUE_NAME("page", tag_value_name);
	}

	return (char*)buf;
}

static char* parse_chars_tag(const char* tag_value_name, const char* buf, bmfont_t* bmfont)
{
	if (strcmp(tag_value_name, "count") == 0)
	{
		buf = consume_integer(buf, &bmfont->chars.count);	
	}																				
	else
	{
		UNKNOWN_TAG_VALUE_NAME("chars", tag_value_name);
	}

	return (char*)buf;	
}

static char* parse_char_tag(const char* tag_value_name, const char* buf, bmfont_t* bmfont)
{
	if (strcmp(tag_value_name, "id") == 0)
	{
		buf = consume_integer(buf, &bmfont->character[bmfont->char_tag_count-1].id);
	}
	else if (strcmp(tag_value_name, "x") == 0)
	{
		buf = consume_integer(buf, &bmfont->character[bmfont->char_tag_count-1].x);	
	}
	else if (strcmp(tag_value_name, "y") == 0)
	{
		buf = consume_integer(buf, &bmfont->character[bmfont->char_tag_count-1].y);	
	}
	else if (strcmp(tag_value_name, "width") == 0)
	{
		buf = consume_integer(buf, &bmfont->character[bmfont->char_tag_count-1].width);	
	}
	else if (strcmp(tag_value_name, "height") == 0)
	{
		buf = consume_integer(buf, &bmfont->character[bmfont->char_tag_count-1].height);	
	}
	else if (strcmp(tag_value_name, "xoffset") == 0)
	{
		buf = consume_integer(buf, &bmfont->character[bmfont->char_tag_count-1].xoffset);	
	}
	else if (strcmp(tag_value_name, "yoffset") == 0)
	{
		buf = consume_integer(buf, &bmfont->character[bmfont->char_tag_count-1].yoffset);	
	}
	else if (strcmp(tag_value_name, "xadvance") == 0)
	{
		buf = consume_integer(buf, &bmfont->character[bmfont->char_tag_count-1].xadvance);	
	}
	else if (strcmp(tag_value_name, "page") == 0)
	{
		buf = consume_integer(buf, &bmfont->character[bmfont->char_tag_count-1].page);	
	}
	else if (strcmp(tag_value_name, "chnl") == 0)
	{
		buf = consume_integer(buf, &bmfont->character[bmfont->char_tag_count-1].chnl);	
	}							
	else
	{
		UNKNOWN_TAG_VALUE_NAME("char", tag_value_name);
	}

	return (char*)buf;
}

/*
	The whole shebang!
*/
int bmfont_decode_str(const char* bmfont_str, bmfont_t* bmfont)
{
	// Initialise structure to default values
	init_bmfont(bmfont);

	/*
		TODO: Not really necessary to read all lines in to a buffer first
	*/
	int line_n = 0;
	char* lines[MAX_LINES];
	char* line = strtok((char*)bmfont_str, "\n");
	while (line != NULL)
	{
		if (line_n >= MAX_LINES)
		{
			printf("Too many lines in BMFont\n");
			return -1;
		}

		lines[line_n] = (char*)malloc(strlen(line));
		strcpy(lines[line_n], line);
		line = strtok(NULL, "\n");

		line_n++;
	}

	/* 
		Parse lines and read tag values as we go using a state machine.
		The parser expects tag values to contain no spaces (e.g. 'size=10', not 'size = 10'), aside
		from quoted strings (e.g. 'font="Courier New"''). Other whitespaces are ignored.
	*/
	int line_i = 0;
	while (line_i < line_n)
	{
		const char* line_it = lines[line_i];
		char tag[64] = {'\0'};

		/*
			Our state machine starts by reading the tag at the start of the line then 
			switches to reading subsequent tag values.
		*/
		const int STATE_READ_TAG 			= 0;
		const int STATE_READ_TAG_VALUE 		= 1;
		int state = STATE_READ_TAG;

		while (*line_it)
		{
			char c = *line_it;
			if (c == ' ')
			{
				line_it++;
			}
			else if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || c == '_')  // urgh...
			{
				if (state == STATE_READ_TAG)	// Reading tag (first word in the line)
				{
					state = STATE_READ_TAG_VALUE;

					int it = 0;
					while (*line_it && *line_it != ' ')
						tag[it++] = *line_it++;			

					tag[it] = '\0';

					// Keep count of 'char' tags
					if (strcmp(tag, "char") == 0)
						bmfont->char_tag_count++;
				}
				else if (state == STATE_READ_TAG_VALUE)	// Reading a tag value
				{
					char tag_value_name[64] = {'\0'};
					int it = 0;
					while (*line_it && *line_it != '=')
						tag_value_name[it++] = *line_it++;
					
					tag_value_name[it] = '\0';

					// move past '='
					// At this point it would be good to check syntax
					line_it++;

					if (strcmp(tag, "info") == 0)
					{					
						line_it = parse_info_tag(tag_value_name, line_it, bmfont);
					} 
					else if (strcmp(tag, "common") == 0)
					{
						line_it = parse_common_tag(tag_value_name, line_it, bmfont);
					}
					else if (strcmp(tag, "page") == 0)
					{
						line_it = parse_page_tag(tag_value_name, line_it, bmfont);
					}
					else if (strcmp(tag, "chars") == 0)	// not documented?
					{
						line_it = parse_chars_tag(tag_value_name, line_it, bmfont);
					}
					else if (strcmp(tag, "char") == 0)
					{
						line_it = parse_char_tag(tag_value_name, line_it, bmfont);
					}
					else if (strcmp(tag, "kerning") == 0)
					{
						// TODO
					}
					else
					{
						printf("Unknown BMFont tag '%s'. Stopping.\n", tag_value_name);
						for(;;);						
					}
				}
				else
				{
					state = STATE_READ_TAG;
				}	
			}
			else
			{
				break;
			}
		}

		line_i++;		
	}

	// Free allocated lines
	while (line_n > 0)
	{
		free(lines[line_n--]);
	}

	return 1;
}
