NAME = sc61860emu

XCC = gcc
LD  = gcc

all: $(NAME)

INCLUDE_DIRS     = -I./include
CFLAGS           = -g -c
LDFLAGS          =

GTKFLAGS = `pkg-config --cflags gtk+-3.0`
GTKLIBS  = `pkg-config --libs gtk+-3.0`

OBJECT_FILES_GTK  = obj/gtk_emu.o obj/change_value.o
OBJECT_FILES_EMU  = obj/disassembler.o obj/personality.o
OBJECT_FILES_EMU += obj/breakpoints.o obj/parse_hex.o obj/emulator.o
OBJECT_FILES_EMU += obj/print_core_info.o obj/pc-1251.o obj/memory_view.o
OBJECT_FILES_EMU += obj/sc61860.o obj/sc43356.o obj/debug.o
OBJECT_FILES = $(OBJECT_FILES_GTK) $(OBJECT_FILES_EMU)

obj/%.o: src/%.c
	@mkdir -p obj
	$(XCC) $(GTKFLAGS) $(CFLAGS) $(INCLUDE_DIRS) -o obj/$*.o $<

$(NAME): $(OBJECT_FILES)
	$(LD) $(LDFLAGS) -o $@ $(OBJECT_FILES) $(LIBS) $(GTKLIBS)

clean:
	rm -f obj/*.o sc61860emu
