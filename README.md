# sharpemu
A simple emulator for Sharp PC pocket computers based on GTK+.

# Contact
atonizzo@lycos.com

# Build
The emulator was build on Ubuntu 14.4 but should also build with no modificaiton on any system with GTK3. So far the only device emualated is the PC1251.

`make pc1245`

or

`make pc1251`

will create an executable of the only supported calculators.

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
