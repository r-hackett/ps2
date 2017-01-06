/*
	Little program to test 3d transform stuff
*/

#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <time.h>

#include "lodepng.h"

#define PI	3.141593f

#define MIN(a,b) (((a)<(b))?(a):(b))
#define MAX(a,b) (((a)>(b))?(a):(b))
#define SWAP(a,b) {a ^= b; b ^= a; a ^= b;}

#define RGBA(r,g,b,a) (rgba_t)(((a) << 24) | ((r) << 16) | ((g) << 8) | (b))

typedef unsigned int rgba_t;

typedef struct framebuf32
{
	rgba_t* data;
	int w,h;
} framebuf32_t;

typedef struct point2i 
{
    int x,y;
} point2i_t;

static __inline int min3(int a, int b, int c)
{
	int m = a;
    if (m > b) m = b;
    if (m > c) m = c;
    return m;
}

static __inline int max3(int a, int b, int c)
{
	int m = a;
    if (m < b) m = b;
    if (m < c) m = c;
    return m;
}

/* 
	Print a matrix in column major order.
*/
static void print_mat(float* m)
{
	printf(	"%.3f %.3f %.3f %.3f "
			"%.3f %.3f %.3f %.3f "
			"%.3f %.3f %.3f %.3f "
			"%.3f %.3f %.3f %.3f\n",
		m[0],m[1],m[2],m[3],
		m[4],m[5],m[6],m[7],
		m[8],m[9],m[10],m[11],
		m[12],m[13],m[14],m[15]);

    for (int i = 0; i < 4; i++)
    {    
    	for (int j = 0; j < 4; j++)
	       printf("%.3f ", m[j * 4 + i]);

    	printf("\n");
    }

    printf("\n");
}

/* 
	Print a vector.
*/
static void print_vec(float* v)
{
	for (int i = 0; i < 4; i++)
    	printf("%f ", v[i]);

    printf("\n");
}

/*
	Multiplies a matrix by a matrix. Stores resulting matrix in m.

	a = 4x4, b = 4x4
	m = a * b
*/ 
static void mulmatmat4f(float* m, float* a, float* b)
{
	m[0] = a[0]*b[0] + a[4]*b[1] + a[8]*b[2] + a[12]*b[3];
	m[1] = a[1]*b[0] + a[5]*b[1] + a[9]*b[2] + a[13]*b[3];
	m[2] = a[2]*b[0] + a[6]*b[1] + a[10]*b[2] + a[14]*b[3];
	m[3] = a[3]*b[0] + a[7]*b[1] + a[11]*b[2] + a[15]*b[3];

	m[4] = a[0]*b[4] + a[4]*b[5] + a[8]*b[6] + a[12]*b[7];
	m[5] = a[1]*b[4] + a[5]*b[5] + a[9]*b[6] + a[13]*b[7];
	m[6] = a[2]*b[4] + a[6]*b[5] + a[10]*b[6] + a[14]*b[7];
	m[7] = a[3]*b[4] + a[7]*b[5] + a[11]*b[6] + a[15]*b[7];

	m[8] = a[0]*b[8] + a[4]*b[9] + a[8]*b[10] + a[12]*b[11];
	m[9] = a[1]*b[8] + a[5]*b[9] + a[9]*b[10] + a[13]*b[11];
	m[10] = a[2]*b[8] + a[6]*b[9] + a[10]*b[10] + a[14]*b[11];
	m[11] = a[3]*b[8] + a[7]*b[9] + a[11]*b[10] + a[15]*b[11];

	m[12] = a[0]*b[12] + a[4]*b[13] + a[8]*b[14] + a[12]*b[15];
	m[13] = a[1]*b[12] + a[5]*b[13] + a[9]*b[14] + a[13]*b[15];
	m[14] = a[2]*b[12] + a[6]*b[13] + a[10]*b[14] + a[14]*b[15];
	m[15] = a[3]*b[12] + a[7]*b[13] + a[11]*b[14] + a[15]*b[15];
} 

/*
	Multiplies a matrix by a vector. Stores resulting vector in v.

	a = 4x4, b = 4x1
	v = a * b
*/
static void mulmatvec4f(float* v, float* a, float* b)
{
	v[0] = a[0]*b[0] + a[4]*b[1] + a[8]*b[2] + a[12]*b[3];
	v[1] = a[1]*b[0] + a[5]*b[1] + a[9]*b[2] + a[13]*b[3];
	v[2] = a[2]*b[0] + a[6]*b[1] + a[10]*b[2] + a[14]*b[3];
	v[3] = a[3]*b[0] + a[7]*b[1] + a[11]*b[2] + a[15]*b[3];
}

/*
	Construct an identity matrix.
*/
static void identity(float* m)
{
   	m[0] = 1.0f;  m[4] = 0.0f;  m[8] = 0.0f;  m[12] = 0.0f;
   	m[1] = 0.0f;  m[5] = 1.0f;  m[9] = 0.0f;  m[13] = 0.0f;
   	m[2] = 0.0f;  m[6] = 0.0f;  m[10] = 1.0f;  m[14] = 0.0f;
   	m[3] = 0.0f;  m[7] = 0.0f;  m[11] = 0.0f;  m[15] = 1.0f;
}

/*
	Translate matrix m.
*/
static void translate(float* m, float x, float y, float z)
{
/*
	Three implementations to consider.
	These can also apply similarly to other functions like scale.
*/

	/* 
		Copy input matrix, generate a translation matrix then multiply.
	 */
#if 0
	float a[16], b[16];
	memcpy(b, m, sizeof(float)*16);

	identity(a);
	a[12] = x;
	a[13] = y;
	a[14] = z;

	mulmatmat4f(m, a, b);
#endif

	/* 
		Copy input matrix, generate a translation matrix then do a simplified 
		multiply (all element except 12-14 are unchanged after the multiply).
	 */
#if 0
	float a[16], b[16];
	memcpy(b, m, sizeof(float)*16);

	identity(a);
	a[12] = x;
	a[13] = y;
	a[14] = z;

	m[12] = a[0]*b[12] + a[4]*b[13] + a[8]*b[14] + a[12]*b[15];
	m[13] = a[1]*b[12] + a[5]*b[13] + a[9]*b[14] + a[13]*b[15];
	m[14] = a[2]*b[12] + a[6]*b[13] + a[10]*b[14] + a[14]*b[15];
#endif

	/* 
		Far simplified, but we can get away with it because we do the mulitply in place.
		That is, we don't need to copy 'm' to a temporary buffer first.
	 */
#if 1
	m[12] = m[12] + x*m[15];
	m[13] = m[13] + y*m[15];
	m[14] = m[14] + z*m[15];	
#endif
}

/*
	Scale matrix m.
*/
static void scale(float* m, float x, float y, float z)
{
	m[0] = m[0] + x*m[15];
	m[5] = m[5] + y*m[15];
	m[10] = m[10] + z*m[15];
}

/*
	Rotate matrix m.
*/
static void rotate(float* m, float angle, float x, float y, float z)
{
	const float DEG2RAD = PI / 180.0f;
	float c = cosf(angle * DEG2RAD);
	float s = sinf(angle * DEG2RAD);
	float c1 = 1.0f - c;

	// rotation matrix
	float r0 = x * x * c1 + c;
	float r1 = x * y * c1 + z * s;
	float r2 = x * z * c1 - y * s;
	float r4 = x * y * c1 - z * s;
	float r5 = y * y * c1 + c;
	float r6 = y * z * c1 + x * s;
	float r8 = x * z * c1 + y * s;
	float r9 = y * z * c1 - x * s;
	float r10 = z * z * c1 + c;

	float rm[16];
   	rm[0] = r0;		rm[4] = r4;  	rm[8] = r8;		rm[12] = 0.0f;
   	rm[1] = r1;  	rm[5] = r5;     rm[9] = r9; 	rm[13] = 0.0f;
	rm[2] = r2;  	rm[6] = r6;  	rm[10] = r10;   rm[14] = 0.0f;
   	rm[3] = 0.0f;  	rm[7] = 0.0f;  	rm[11] = 0.0f;  rm[15] = 1.0f;

	float a[16];
	memcpy(a, m, sizeof(float)*16);
	mulmatmat4f(m, rm, a);	
}

/*
	Construct a viewing frustum.
*/
static void frustum(float* m, 
	float left, float right,
    float bottom, float top,
    float nearval, float farval)
{
   	float x, y, a, b, c, d;
 
   	x = (2.0f * nearval) / (right - left);
   	y = (2.0f * nearval) / (top - bottom);
   	a = (right + left) / (right - left);
   	b = (top + bottom) / (top - bottom);
   	c = -(farval + nearval) / ( farval - nearval);
	d = -(2.0f * farval * nearval) / (farval - nearval);

   	m[0] = x;     m[4] = 0.0f;  m[8] = a;      m[12] = 0.0f;
   	m[1] = 0.0f;  m[5] = y;     m[9] = b;      m[13] = 0.0f;
   	m[2] = 0.0f;  m[6] = 0.0f;  m[10] = c;      m[14] = d;
   	m[3] = 0.0f;  m[7] = 0.0f;  m[11] = -1.0f;  m[15] = 0.0f;
}

/*
	Construct a perspective projection matrix.
*/
static void perspective(float* m, float fovdeg, float aspect, float znear, float zfar)
{
	float ymax, xmax;
	ymax = znear * tanf(fovdeg * PI / 360.0f);
	xmax = ymax * aspect;
	frustum(m, -xmax, xmax, -ymax, ymax, znear, zfar);
}

/*
	Construct an orthographic projection matrix.
*/
static void ortho(float* m,
	float left, float right,
    float bottom, float top,
    float nearval, float farval)
{
   	float a, b, c, d, e, f;
 
   	a = 2.0f / (right - left);
   	b = 2.0f / (top - bottom);
   	c = -2.0f / (farval - nearval);
   	d = -((right + left) / (right - left));
   	e = -((top + bottom) / (top - bottom));
   	f = -((farval + nearval) / (farval - nearval));

   	m[0] = a;     m[4] = 0.0f;  m[8] = 0.0f;      m[12] = d;
   	m[1] = 0.0f;  m[5] = b;     m[9] = 0.0f;      m[13] = e;
   	m[2] = 0.0f;  m[6] = 0.0f;  m[10] = c;         m[14] = f;
   	m[3] = 0.0f;  m[7] = 0.0f;  m[11] = 0.0f;      m[15] = 1.0f;
}

/*
	Transform a vertex in object space to screen space.

	v = 4x1. vertex to transform
	mv_m = 4x4. model-view matrix
	persp_m = 4x4. perspective matrix
	viewport = 4x1. [x,y,w,h]
	sv = 4x1. resulting screen coordinates
*/
void transform(float* v, float* mv_m, float* persp_m, float* viewport, float* sv)
{
	// constuct mvp (model-view projection matrix)
	float mvp[16];
	mulmatmat4f(mvp, persp_m, mv_m);

	// object -> eye -> clip
	float coords[4];
	mulmatvec4f(coords, mvp, v);

	// clip -> ndc (perspective divide)
	coords[0] /= coords[3];
	coords[1] /= coords[3];
	coords[2] /= coords[3];

	// ndc -> screen
	float half_w = viewport[2] / 2.0f;
	float half_h = viewport[3] / 2.0f;
	float f = 1.0f;
	float n = 0.0f;  
	sv[0] = half_w * coords[0] + (viewport[0] + half_w);
	sv[1] = half_h * coords[1] + (viewport[1] + half_h);
	sv[2] = (f - n) / 2.0f * coords[2] + ((f + n) / 2.0f);
	sv[3] = 1.0f;

	// past far clip plane
	if (sv[2] > f) {}

	// past near clip plane
	if (sv[2] < n) {}
}

static __inline void fb32_put(framebuf32_t* fb, int x, int y, rgba_t color)
{
	fb->data[y * fb->w + x] = color;
}

static void fb32_clear(framebuf32_t* fb, rgba_t color)
{
	for (int y = 0; y < fb->h; y++)
		for (int x = 0; x < fb->w; x++)
			fb->data[y * fb->w + x] = color;
}

static framebuf32_t fb32_alloc(int width, int height)
{
	framebuf32_t fb;
	fb.data = (rgba_t*)malloc(width * height * 4);
	fb.w = width;
	fb.h = height;
	return fb;
}

static void fb32_unalloc(framebuf32_t* fb)
{
	if (fb->data)
		free(fb->data);
}

static void fb32_export_png(framebuf32_t* fb, const char* file)
{
	unsigned error = lodepng_encode32_file(file, (unsigned char*)fb->data, fb->w, fb->h);
	if (error)
		printf("error %u: %s\n", error, lodepng_error_text(error));
}

static int orient2d(const point2i_t* a, const point2i_t* b, const point2i_t* c)
{
#if 0
   	return (c->x - a->x) * (b->y - a->y) - (c->y - a->y) * (b->x - a->x);
#endif
	return (b->x - a->x) * (c->y - a->y) - (b->y - a->y) * (c->x - a->x);
}

/*
	Quick and dirty filled triangle. Not pretty, but it outputs pretty much any 
	kind of (none degenerate) triangle we throw at it and don't need to care about 
	edge cases, as we would in the case of a scanline rasterizer.
*/
void fb32_tri(framebuf32_t* fb, const point2i_t v[3], const rgba_t rgba)
{
	// vertex incices sorted in y
	int y0 = 0, y1 = 1, y2 = 2;
	if (v[0].y > v[2].y) SWAP(y0, y2);
	if (v[0].y > v[1].y) SWAP(y0, y1);
	if (v[1].y > v[2].y) SWAP(y1, y2);

    // compute triangle bounding box
    int minx = min3(v[0].x, v[1].x, v[2].x);
    int miny = min3(v[0].y, v[1].y, v[2].y);
    int maxx = max3(v[0].x, v[1].x, v[2].x);
    int maxy = max3(v[0].y, v[1].y, v[2].y);

    // clip against screen bounds
    minx = MAX(minx, 0);
    miny = MAX(miny, 0);
    maxx = MIN(maxx, fb->w - 1);
    maxy = MIN(maxy, fb->h - 1);

    // draw
    point2i_t p;
    for (p.y = miny; p.y <= maxy; p.y++) 
    {
        for (p.x = minx; p.x <= maxx; p.x++) 
        {
            // determine barycentric coordinates
            int w0 = orient2d(&v[y0], &v[y1], &p);
            int w1 = orient2d(&v[y1], &v[y2], &p);
            int w2 = orient2d(&v[y2], &v[y0], &p);

            // if p is on or inside all edges, render pixel.
            if ( (w0 >= 0 && w1 >= 0 && w2 >= 0) ||
            	 (w0 <= 0 && w1 <= 0 && w2 <= 0) )
            {
                fb32_put(fb, p.x, p.y, rgba); 
            }
        }
    }
}

int main() 
{
	srand(time(NULL));

	const int FB_WIDTH = 1920;
	const int FB_HEIGHT = 1080;

	// viewport data used to construct projection matrix [x,y,w,h]
	float viewport[] = {0.0f, 0.0f, FB_WIDTH, FB_HEIGHT};

	// create a projection matrix (viewing frustum) with the aspect ratio of our window
	// and desired fov
	float persp[16];
    perspective(persp, 45.0f, FB_WIDTH / FB_HEIGHT, 0.1f, 100.0f);

    // modelview matrix
	float mv[16];

	// our imaginary triangle floating around in space
	float tri[3][4] = {
		{0.0f,1.0f, 0.0f, 1.0f},
		{-1.0f,-1.0f, 0.0f, 1.0f},
		{1.0f,-1.0f, 0.0f, 1.0f}
	};

    framebuf32_t fb = fb32_alloc(FB_WIDTH, FB_HEIGHT);
    {
    	fb32_clear(&fb, RGBA(0x80, 0x80, 0x80, 0xff));
   
   		float tx = -6.5f;

   		for (int i = 0; i < 8; i++)
   		{
   			// play with the modelview matrix a bit
   			identity(mv);
   			rotate(mv, i * 20.0f, 0.5f, 1.0f, 0.0f);
   			scale(mv, 1.0f, 1.0f, 1.0f);
   			translate(mv, tx += 1.4f, 0.0f, -17.0f);

   			// screen coordinates for the triangle after transform
		    float sctri[3][4];

		    // transform all points in the triangle
		    transform(&tri[0][0], mv, persp, viewport, &sctri[0][0]);
		    transform(&tri[1][0], mv, persp, viewport, &sctri[1][0]);
		    transform(&tri[2][0], mv, persp, viewport, &sctri[2][0]);

		    // convert to rasterizer's format
	   		point2i_t pc[] = {
	   			{(int)sctri[0][0], (int)sctri[0][1]},
	   			{(int)sctri[1][0], (int)sctri[1][1]},
	   			{(int)sctri[2][0], (int)sctri[2][1]}
	   		};

	   		fb32_tri(&fb, pc, RGBA(rand() % 0xff, rand() % 0xff, rand() % 0xff, 0xff));
	   	}

   		fb32_export_png(&fb, "framebuf32.png");
	}
    fb32_unalloc(&fb);
}
