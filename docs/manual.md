# Build

Currently the calculator that build are:

* PC-1245
* PC-1251
* PC-1255
* PC-1260
* PC-1262

```> make pc1245```

or

```> make pc1251```

will create an executable of supported calculators.

#Breakpoint File
The user can define a file named `events.dbg` where breakpoints can be set so that execution is stopped when the breakpoint is hit. The syntax for this file is the following:
##Memory Breakpoint
The syntax is ```P:addr``` or ```p:addr```. ```P:addr``` sets a permanent breakpoint at a given address. ```p:addr``` sets a breakpoint that is automatically removed the first time that it is hit. For example:

`P:0xABCD`

sets a permanent breakpoint at address 0xABCD.

##Instruction Breakpoint
The syntax is ```I:encoding``` or ```i:encoding```. ```I:addr``` sets a permanent breakpoint whenver an in. ```p:addr``` sets a breakpoint that is automatically removed the first time that it is hit. For example:

`I:0x5B`

sets a temporary breakpoint that is hit when the POP instruction (encoding of 0x5B) is hit and is then removed.
# Display Handling
The display RAM is used as a temporary storage during arithmetic operations. To prevent the display from diplaying garbage during operations the display should be turned off and while it is OFF no update should be done. Unfortunately I have not been able to find any datasheet for the LCD driver and so, with my limited understanding of how it works, the current code still displays garbage during calculations although it then settles on good data at the end.
# Construction of the display During Startup
The display is built dynamically based on information contained in the file pc12xx.h for each of the devices. For example, in the case of the PC-1251 it is only one line of 24 characters, reduced to a single line of 16 characters for the PC-1245. The PC-1260 has 2 lines of 24 characters each. Other machines that can be emulated in the future have different display sizes and effort has been expended in making sure that the way the LCD display is built for the PC1251 can be extended to machines that have larger or smaller diplays. That said, there will likely been a need to revisit this as soon as a different LCD size is emulated.
# Disassembly of OS
During the writing of the emulator I had the need to disassemble pieces of the PC-1251 kernel and BASIC ROM. Two files, ```cpu-1251.lst``` and ```bas-1251.lst``` are the disassembly of these areas which, in a few places, I commented where the purpose of the code was clear to me. The ROM of the PC-1260 and PC-1262 has not been interpreted yet.
# The events.dbg File
During initialization the emulator tries to open a file in read mode called events.dbg. In this file the user can place, one line per command, a number of commands rwlated to breakpoints and watchpoints. When the emulator hits one of these breakpoints the execution is stopped and the user can analyze the resulting data.

The current commands are

## P
Sets a breakpoint that is hit when the address that follows is hit. The following example places a breakpoint at address 0xABCD.

`P:0xabcd`
## p
Same syntax as the 'P' command but the breakpoint is automatically removed once it is hit the first time.
## I
Sets a breakpoint that is hit when a give opcode, passed as argument, is exectuted. The following example causes a the execution to stop when the fist LII instruction (opcode 0x00) is executed.

`I:0x00`
## i
Same syntax as the 'i' command but the breakpoint is removed once it is hit the first time.
## S
Sets the content of any memory location in the scratchpad memory.

`S:0x20:10`

The contents of scratchpad memory 0x20 are set to 10.
# TODO
A short list of the things that need some work:
* Better handling of the LCD. Currently there is garbage that is printed out when computations are performed.
* IO routines, to be able to store the content of memory. This is timing dependent and thus will have to use the cycle counter.
* Implement the dialog box that changes the value of registers
* PC-14xx support.
