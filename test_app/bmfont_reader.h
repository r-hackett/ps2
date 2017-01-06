#ifndef _BMFONT_READER_H_
#define _BMFONT_READER_H_

#define MAX_STR_LEN			256
#define NOT_SET				((int)0xdeadbeef)

typedef int bmfont_bool;

// Unused values are either strings with the first character set to NULL or integers set to NOT_SET
typedef struct
{
	struct
	{
		char font[MAX_STR_LEN];
		int size;
		bmfont_bool bold;
		bmfont_bool italic;
		char charset[MAX_STR_LEN];
		bmfont_bool unicode;
		int stretchh;
		bmfont_bool smooth;
		bmfont_bool aa;
		int pad_up, pad_right, pad_left, pad_down;
		int space_horizontal, space_vertical;
		int outline;
	} info;

	struct
	{
		int lineheight;
		int base;
		int scalew;
		int scaleh;
		int pages;
		bmfont_bool packed;
		int alphachnl;
		int redchnl;
		int greenchnl;
		int bluechnl;
	} common;

	struct
	{
		int id;
		char file[MAX_STR_LEN];
	} page;

	// Usually present but doesn't seem documented
	struct
	{
		int count;	// character count
	} chars;

	// 'char' tag
	// Since we use ANSI characters we can safely assume no more than 256 chars are necessary
	struct
	{
		int id;
		int x, y;
		int width, height;
		int xoffset, yoffset;
		int xadvance;
		int page;
		int chnl;
	} character[256];	// can't call this "char", doh...

	// Current 'char' tag count
	int char_tag_count;

} bmfont_t;

/*
	Given a .fnt file, as 'bmfont_str', interpret the file and fill the
	'bmfont' structure.
*/
int bmfont_decode_str(const char* bmfont_str, bmfont_t* bmfont);

/*
	Printf bmfont structure.
*/
void bmfont_print(bmfont_t* bmfont);

#endif /* _BMFONT_READER_H_ */
