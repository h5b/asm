AS= /usr/bin/nasm
LD= /usr/bin/ld

ASFLAGS= -f elf

PROG= hello
OBJS= $(PROG).o

CLEANFILES= $(PROG).o $(PROG)

default: $(PROG)

$(PROG): $(OBJS)
	$(LD) -o $(PROG) $(PROG).o

$(PROG).o: $(PROG).asm
	$(AS) $(ASFLAGS) $(PROG).asm

clean:
	rm -rf $(CLEANFILES)
