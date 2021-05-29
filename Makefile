# Created dependencies as exaplined here:
# http://make.mad-scientist.net/papers/advanced-auto-dependency-generation/
DEPDIR := .deps
$(shell mkdir -p $(DEPDIR) >/dev/null)
DEPFLAGS = -MT $@ -MMD -MP -MF $(DEPDIR)/$*.d

# All the .o files will be here.
$(shell mkdir -p obj >/dev/null)

XCC = gcc
LD  = gcc

PC_MODEL=pc1245

INCLUDE_DIRS     = -I./include
CFLAGS           = $(DEPFLAGS) -g -c -O0 -Wall
LDFLAGS          = -rdynamic

pc1251: CFLAGS+=-DMODEL_PC1251
pc1245: CFLAGS+=-DMODEL_PC1245

GTKFLAGS = `pkg-config --cflags gtk+-3.0`
GTKLIBS  = `pkg-config --libs gtk+-3.0`

OBJECT_FILES_GTK  = obj/gtk_emu.o obj/change_value.o
#OBJECT_FILES_EMU  = obj/personality.o
OBJECT_FILES_EMU += obj/breakpoints.o obj/parse_hex.o obj/emulator.o
OBJECT_FILES_EMU += obj/print_core_info.o obj/memory_view.o
OBJECT_FILES_EMU += obj/sc61860.o obj/debug.o
OBJECT_FILES_EMU += obj/lcd.o
OBJECT_FILES = $(OBJECT_FILES_GTK) $(OBJECT_FILES_EMU)
OBJECT_FILES_PC1245 = obj/pc-1245.o
OBJECT_FILES_PC1251 = obj/pc-1251.o
OBJECT_FILES_PC1262 = obj/pc-1262.o

obj/%.o: src/%.c
	$(XCC) $(GTKFLAGS) $(CFLAGS) $(INCLUDE_DIRS) -o obj/$*.o $<
	$(POSTCOMPILE)

pc1245: $(OBJECT_FILES) $(OBJECT_FILES_PC1245)
	$(LD) $(LDFLAGS) -o $@ $^ $(LIBS) $(GTKLIBS)

pc1251: $(OBJECT_FILES) $(OBJECT_FILES_PC1251)
	$(LD) $(LDFLAGS) -o $@ $^ $(LIBS) $(GTKLIBS)

pc1262: $(OBJECT_FILES) $(OBJECT_FILES_PC1262)
	$(LD) $(LDFLAGS) -o $@ $^ $(LIBS) $(GTKLIBS)

clean:
	@rm -f obj/*.o .d/* pc1251 pc1245 instructions.txt
	@rm -f memaccess.txt

DEPFILES := $(SRCS:%.c=$(DEPDIR)/%.d)
$(DEPFILES):
include $(wildcard $(DEPFILES))
