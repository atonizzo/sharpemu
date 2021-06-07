NAME=sc61860_disasm

XCC = gcc

## Build flags.
CFLAGS = -g -O0 -Wall -I./
LDFLAGS =
LIBS =
LD = $(XCC)

## Build rules.
all: $(NAME)

OBJECT_FILES     = disasm.o

%.o: %.c
	$(XCC) -c -o $@ $(CFLAGS) $<

$(NAME): $(OBJECT_FILES)
	$(LD) $(LDFLAGS) -o $@ $(OBJECT_FILES) $(LIBS)

clean:
	@rm -f *.o
	@rm $(NAME)
