# Created dependencies as exaplined here:
# http://make.mad-scientist.net/papers/advanced-auto-dependency-generation/
NAME = sc61860emu

DEPDIR := .d
$(shell mkdir -p $(DEPDIR) >/dev/null)
DEPFLAGS = -MT $@ -MMD -MP -MF $(DEPDIR)/$*.Td
POSTCOMPILE = @mv -f $(DEPDIR)/$*.Td $(DEPDIR)/$*.d

# All the .o files will be here.
$(shell mkdir -p obj >/dev/null)

XCC = gcc
LD  = gcc

all: pc1251
pc-1251: pc1251
pc-1245: pc1245

INCLUDE_DIRS     = -I./include
CFLAGS           = $(DEPFLAGS) -g -c -O0
LDFLAGS          =

GTKFLAGS = `pkg-config --cflags gtk+-3.0`
GTKLIBS  = `pkg-config --libs gtk+-3.0`

OBJECT_FILES_GTK  = obj/gtk_emu.o obj/change_value.o
#OBJECT_FILES_EMU  = obj/personality.o
OBJECT_FILES_EMU += obj/breakpoints.o obj/parse_hex.o obj/emulator.o
OBJECT_FILES_EMU += obj/print_core_info.o obj/memory_view.o
OBJECT_FILES_EMU += obj/sc61860.o obj/debug.o
OBJECT_FILES = $(OBJECT_FILES_GTK) $(OBJECT_FILES_EMU)
OBJECT_FILES_PC1251 = obj/pc-1251.o
OBJECT_FILES_PC1245 = obj/pc-1245.o

obj/%.o: src/%.c $(DEPDIR)/%.d
	$(XCC) $(GTKFLAGS) $(CFLAGS) $(INCLUDE_DIRS) -o obj/$*.o $<
	$(POSTCOMPILE)

pc1251: $(OBJECT_FILES) $(OBJECT_FILES_PC1251)
	$(LD) $(LDFLAGS) -o $@ $^ $(LIBS) $(GTKLIBS)

pc1245: $(OBJECT_FILES) $(OBJECT_FILES_PC1245)
	$(LD) $(LDFLAGS) -o $@ $^ $(LIBS) $(GTKLIBS)

clean:
	rm -f obj/*.o .d/* pc1251 pc1245

$(DEPDIR)/%.d: ;
.PRECIOUS: $(DEPDIR)/%.d

include $(wildcard $(patsubst %,$(DEPDIR)/%.d,$(basename $(SRCS))))
