OBJ_DIR = obj

EE_PREFIX ?= ee-
EE_CC = $(EE_PREFIX)gcc
EE_CXX= $(EE_PREFIX)g++
EE_AS = $(EE_PREFIX)as
EE_LD = $(EE_PREFIX)ld
EE_AR = $(EE_PREFIX)ar
EE_OBJCOPY = $(EE_PREFIX)objcopy
EE_STRIP = $(EE_PREFIX)strip

DVP_PREFIX ?= dvp-
DVP_AS = $(DVP_PREFIX)as
VCL = vcl

# Tools binaries
RAW2C_BIN  = tools/raw2c/raw2c
DUMPSECTION_BIN  = tools/dumpsection/dumpsection
IMAGEUNPACK_BIN = tools/imageunpack/imageunpack

# Tools directories
RAW2C_DIR = $(dir $(RAW2C_BIN))
DUMPSECTION_DIR = $(dir $(DUMPSECTION_BIN))
IMAGEUNPACK_DIR = $(dir $(IMAGEUNPACK_BIN))
TOOLS_DIRS = $(RAW2C_DIR) $(DUMPSECTION_DIR) $(IMAGEUNPACK_DIR)

VCL_SRC = $(wildcard *.vcl)
VP_RAW2C_SRC = $(VCL_SRC:.vcl=.c)

VPDATA_SRC = $(wildcard *.dsm)
VPDATA_RAW2C_SRC = $(VPDATA_SRC:%.dsm=%.c)

PNG_SRC = $(wildcard textures/*.png)
PNG_SRC_NOTDIR = $(notdir $(PNG_SRC))
PNG_RAW2C_SRC = $(PNG_SRC_NOTDIR:%.png=%.c)

TEX_SRC = $(wildcard raw/*.raw)
TEX_SRC_NOTDIR = $(notdir $(TEX_SRC))
TEX_RAW2C_SRC = $(TEX_SRC_NOTDIR:%.raw=%.c)

FNT_SRC = $(wildcard fonts/*.fnt)
FNT_SRC_NOTDIR = $(notdir $(FNT_SRC))
FNT_RAW2C_SRC = $(FNT_SRC_NOTDIR:%.fnt=%.c)

CSRC = $(wildcard *.c)

EE_BIN = test.elf

# To simplify having to list each kind of data output by raw2c
RAW2C_OUTPUT_SRC = $(VP_RAW2C_SRC) $(VPDATA_RAW2C_SRC) $(TEX_RAW2C_SRC) $(FNT_RAW2C_SRC) $(PNG_RAW2C_SRC)

# The final objects compiled in to the binary
EE_OBJS = 	$(RAW2C_OUTPUT_SRC:%.c=$(OBJ_DIR)/%.o) \
			$(CSRC:%.c=$(OBJ_DIR)/%.o) 

EE_LIBS = -lpacket -ldma -lgraph -ldraw -lc -lmf

EE_INCS := -I$(PS2SDK)/ee/include -I$(PS2SDK)/common/include -I. $(EE_INCS)
EE_CFLAGS := -D_EE -O2 -G0 -Wall $(EE_CFLAGS)
EE_CXXFLAGS := -D_EE -O2 -G0 -Wall $(EE_CXXFLAGS)
EE_LDFLAGS := -L$(PS2SDK)/ee/lib $(EE_LDFLAGS)
EE_ASFLAGS := -G0 $(EE_ASFLAGS)

# Link with following libraries. This is a special case, and instead of
# allowing the user to override the library order, we always make sure
# libkernel is the last library to be linked.
EE_LIBS += -lc -lkernel

obj/%.o : %.c
	$(EE_CC) $(EE_CFLAGS) $(EE_INCS) -c $< -o $@

obj/%.o : %.s
	$(EE_AS) $(EE_ASFLAGS) $< -o $@

# .vcl code is compile by VCL in to .vsm which is compiled by the VU assembler. 
# The text section from that code is output to a .section file which is run through
# raw2c to generate a C array of the section which is finally useful in code. phew...
%.c : %.vcl
	$(VCL) -o$(basename $@).vsm $<
	$(DVP_AS) -o $(OBJ_DIR)/$(basename $@).vo $(basename $@).vsm
	$(DUMPSECTION_BIN) $(OBJ_DIR)/$(basename $@).vo $(OBJ_DIR)/$(basename $@).vptextsection .vutext dvp-readelf
	$(RAW2C_BIN) $(OBJ_DIR)/$(basename $@).vptextsection

# Similar to above but for VU data (doesn't use VCL)
%.c : %.dsm
	$(DVP_AS) -o $(OBJ_DIR)/$(basename $@).dvo $<
	$(DUMPSECTION_BIN) $(OBJ_DIR)/$(basename $@).dvo $(OBJ_DIR)/$(basename $@).vpdatasection .vudata dvp-readelf
	$(RAW2C_BIN) $(OBJ_DIR)/$(basename $@).vpdatasection
	
# Convert png's to raw data
%.c : textures/%.png
	$(IMAGEUNPACK_BIN) $< raw/$(basename $@).raw
	$(RAW2C_BIN) raw/$(basename $@).raw

# AngelCode BMFont files
%.c : fonts/%.fnt
	$(RAW2C_BIN) $<

$(EE_BIN) : $(RAW2C_OUTPUT_SRC) $(EE_OBJS) $(PS2SDK)/ee/startup/crt0.o
	$(EE_CC) -mno-crt0 -T$(PS2SDK)/ee/startup/linkfile $(EE_CFLAGS) \
		-o $(EE_BIN) $(PS2SDK)/ee/startup/crt0.o $(EE_OBJS) $(EE_LDFLAGS) $(EE_LIBS)

strip: $(EE_BIN)
	$(EE_STRIP) --strip-all $(EE_BIN)

# Build tools
tools: $(TOOLS_DIRS)
	$(foreach tool, $(TOOLS_DIRS), make -C $(tool);)

all: tools $(EE_BIN)
	@echo "--------------------"
	@echo "| Build succeeded! |"
	@echo "--------------------"

clean:
	rm -f $(EE_BIN) $(OBJ_DIR)/* raw/* $(RAW2C_OUTPUT_SRC) $(TEX_RAW2C_SRC:.c=.h) 


