# sharpemu
A simple emulator for Sharp PC pocket computers based on GTK+.

# Contact
atonizzo@lycos.com

# Random Thoughts

## SC61860 Emulator
There is a bug in the emulator code. The easiest way to show it is to just type the BASIC command PI and press ENTER. The result should be the familiar 3.14... number but at the moment it is anything but. This points to a bug in the way one or more instructions are emulated. I have spent a considerable amount of time trying to find it out wihtout any success. While doing this I have isolated and commented the relevant OS portions for that command (label LBL154E in the cpu-1251.asm file is the spot when the actual BCD value is copied in memory.)
## Display Handling
The display RAM is used as a temporary storage during arithmetic operations. To prevent the display from diplaying garbage during operations the display should be turned off and while it is OFF no update should be done. Unfortunately I have not been able to find any datasheet for the LCD driver and so, with my limited understanding of how it works, the current code still displays garbage during calculations although it then settles on good data at the end.
## Construction of the display During Startup
Currently the only supported device is the PC1251. The display is built dynamically, and in the case of the PC1251 it is only one line of 24 characters. Other machines that can be emulated in the future have different display sizes and effort has been expended in making sure that the way the LCD display is built for the PC1251 can be extended to machines that have larger or smaller diplays. That said, there will likely been a need to revisit this as soon as a different LCD size is emulated.
## Disassembly of OS
During the writing of the mulator I had the need to disassemble pieces of the kernel and BASIC ROM. Two files, cpu-1251.lst and bas-1251.lst are the disassembly of these areas which, in a few places, I commented is the purpose of the code was clear to me.
## events.dbg
During initialization the emulator tries to open a file in read mode called events.dbg. In this file the user can place, one line per command, a number of commands rwlated to breakpoints and watchpoints. When the emulator hits one of these breakpoints the execution is stopped and the user can analyze the resulting data.

The current commands are

### P
Sets a breakpoint that is hit when the address that follows is hit. the address must be in hexadecimal. The following example places a breakpoint at address 0xABCD.

`P 0xabcd`
### p
Same syntax as the 'P' command but the breakpoint is removed once it is hit the first time.
### I
Sets a breakpoint that is hit when a give opcode, passed as argument, is exectuted. The following example causes a the execution to stop when the fist LII instruction (opcode 0x00) is executed.

`I 0x00`
### i
Same syntax as the 'i' command but the breakpoint is removed once it is hit the first time.

