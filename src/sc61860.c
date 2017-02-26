// Copyright (c) 2016-2017, atonizzo@lycos.com
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//     * Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above copyright
//       notice, this list of conditions and the following disclaimer in the
//       documentation and/or other materials provided with the distribution.
//     * Neither the name of the <organization> nor the
//       names of its contributors may be used to endorse or promote products
//       derived from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
// ARE DISCLAIMED. IN NO EVENT SHALL <COPYRIGHT HOLDER> BE LIABLE FOR ANY
// DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include <gtk/gtk.h>
#include <sc61860_emu.h>

#define HEX_COLUMN                                   6
#define INSTRUCTION_COLUMN                           14
#define OPERAND_COLUMN                               21
#define COMMENT_COLUMN                               28

#define SC61860_FORMAT_TERM                         (0 << 24)
#define SC61860_FORMAT_IMMEDIATE8                   (1 << 24)
#define SC61860_FORMAT_NOOPERAND                    (2 << 24)
#define SC61860_FORMAT_IMMEDIATE16                  (3 << 24)
#define SC61860_FORMAT_RELATIVE_PLUS                (4 << 24)
#define SC61860_FORMAT_RELATIVE_MINUS               (5 << 24)
#define SC61860_FORMAT_ADDRESS16                    (6 << 24)
#define SC61860_FORMAT_IMMEDIATE6                   (7 << 24)
#define SC61860_FORMAT_ADDRESS13                    (8 << 24)
#define SC61860_FORMAT_PTJ                          (9 << 24)
#define SC61860_FORMAT_DTJ                          (10 << 24)
#define SC61860_FORMAT_CASE                         (11 << 24)
#define SC61860_FORMAT_DEFAULT                      (12 << 24)

struct __cpu_state cpu_state;

void sim_not_implemented(void)
{
    printf("Instruction not implemented at address: %04X, opcode: %02X\r\n",
            cpu_state.pc,
            read_mem(cpu_state.pc));
    exit(-1);
}

static int16_t add_bcd(uint8_t a, uint8_t b, uint8_t carry)
{
    if ((a == 0) && (carry == 0))
        return b;
    if ((b == 0) && (carry == 0))
        return a;
    uint8_t tmp0 = (a & 0x0F) + (b & 0x0F) + carry;
    carry = 0;
    if (tmp0 > 9)
        tmp0 += 6;
    uint16_t result = (a & 0xF0) + (b & 0xF0) + tmp0;
    if (result > 0x99)
        result += 0x60;   // Automatically generates final carry.
    return result;
}

static int16_t sub_bcd(uint8_t a, uint8_t b, uint8_t carry)
{
    if ((a == 0) && (carry == 0))
        return b;
    if ((b == 0) && (carry == 0))
        return a;
    printf("a:%02x b:%02x carry:=%d ", a, b, carry);
    int16_t tmp = (a & 0x0f) - (b & 0x0f) - carry;
    if (tmp < 0 )
    {
        tmp += 10;
        tmp += (a & 0xf0) - (b & 0xf0) - 0x10;
    }
    else
        tmp += (a & 0xf0) - (b & 0xf0);
    if (tmp < 0)
        tmp = 0xa0 + 0x100;
    printf("result: %02x\r\n", tmp);
    return tmp;
}

void sim_arith(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    int32_t tmp0, tmp1;
    switch (instruction)
    {
    case 0x14:          // "adb"        [P+1,P] + (B,A) -> [P+1,P]
                        //              P + 1 -> P
        tmp0 = cpu_state.scratchpad.raw.mem[cpu_state.p + 1] << 8;
        tmp0 |= cpu_state.scratchpad.raw.mem[cpu_state.p];
        tmp1 = cpu_state.scratchpad.regs.b << 8;
        tmp1 |= cpu_state.scratchpad.regs.a;
        tmp0 += tmp1;
        cpu_state.scratchpad.raw.mem[cpu_state.p + 1] = tmp0 >> 8;
        cpu_state.scratchpad.raw.mem[cpu_state.p] = tmp0;
        cpu_state.p += 1;
        cpu_state.p &= 0x7F;
        cpu_state.flags.carry = (tmp0 > 0xFFFF);
        cpu_state.flags.zero = (tmp0 == 0);
        cpu_state.cycles += 5;
        break;
    case 0x15:          // "sbb"        [P+1,P] - (B,A)-> [P+1,P]
                        //              P + 1 -> P
        tmp0 = cpu_state.scratchpad.raw.mem[cpu_state.p + 1] << 8;
        tmp0 |= cpu_state.scratchpad.raw.mem[cpu_state.p];
        tmp1 = cpu_state.scratchpad.regs.b << 8;
        tmp1 |= cpu_state.scratchpad.regs.a;
        tmp0 -= tmp1;
        cpu_state.scratchpad.raw.mem[cpu_state.p + 1] = tmp0 >> 8;
        cpu_state.scratchpad.raw.mem[cpu_state.p] = tmp0;
        cpu_state.p += 1;
        cpu_state.p &= 0x7F;
        cpu_state.flags.carry = (tmp0 < 0);
        cpu_state.flags.zero = (tmp0 == 0);
        cpu_state.cycles += 5;
        break;
    case 0x44:          // "adm"        [P] + A -> [P]
        tmp0 = cpu_state.scratchpad.raw.mem[cpu_state.p];
        tmp0 += cpu_state.scratchpad.regs.a;
        cpu_state.scratchpad.raw.mem[cpu_state.p] = tmp0;
        cpu_state.flags.carry = (tmp0 > 0xFF);
        cpu_state.flags.zero = (cpu_state.scratchpad.raw.mem[cpu_state.p] == 0);
        cpu_state.cycles += 3;
        break;
    case 0x45:          // "sbm"        [P] - A -> [P]
        tmp0 = cpu_state.scratchpad.raw.mem[cpu_state.p];
        tmp0 -= cpu_state.scratchpad.regs.a;
        cpu_state.scratchpad.raw.mem[cpu_state.p] = tmp0;
        cpu_state.flags.carry = (tmp0 < 0);
        cpu_state.flags.zero = (cpu_state.scratchpad.raw.mem[cpu_state.p] == 0);
        cpu_state.cycles += 3;
        break;
    case 0x70:          // "adim"       [P] + n -> [P]
        cpu_state.pc += 1;
        tmp0 = cpu_state.scratchpad.raw.mem[cpu_state.p];
        tmp0 += read_mem(cpu_state.pc);
        cpu_state.scratchpad.raw.mem[cpu_state.p] = tmp0;
        cpu_state.flags.carry = (tmp0 > 0xFF);
        cpu_state.flags.zero = (cpu_state.scratchpad.raw.mem[cpu_state.p] == 0);
        cpu_state.cycles += 4;
        break;
    case 0x71:          // "sbim"       [P] - n -> [P]
        cpu_state.pc += 1;
        tmp0 = cpu_state.scratchpad.raw.mem[cpu_state.p];
        tmp0 -= read_mem(cpu_state.pc);
        cpu_state.scratchpad.raw.mem[cpu_state.p] = tmp0;
        cpu_state.flags.carry = (tmp0 < 0);
        cpu_state.flags.zero = (cpu_state.scratchpad.raw.mem[cpu_state.p] == 0);
        cpu_state.cycles += 4;
        break;
    case 0x74:          // "adia"       A + n -> A
        cpu_state.pc += 1;
        tmp0 = cpu_state.scratchpad.regs.a;
        tmp0 += read_mem(cpu_state.pc);
        cpu_state.scratchpad.regs.a = tmp0;
        cpu_state.flags.carry = (tmp0 > 0xFF);
        cpu_state.flags.zero = (cpu_state.scratchpad.regs.a == 0);
        cpu_state.cycles += 3;
        break;
    case 0x75:          // "sbia"       A - n -> A
        cpu_state.pc += 1;
        tmp0 = cpu_state.scratchpad.regs.a;
        tmp0 -= read_mem(cpu_state.pc);
        cpu_state.scratchpad.regs.a = tmp0;
        cpu_state.flags.carry = tmp0 < 0;
        cpu_state.flags.zero = (cpu_state.scratchpad.regs.a == 0);
        cpu_state.cycles += 3;
        break;
    case 0xc4:          // "adcm"       [P] + A + C -> [P]
        tmp0 = cpu_state.scratchpad.raw.mem[cpu_state.p];
        tmp0 += cpu_state.scratchpad.regs.a;
        tmp0 += cpu_state.flags.carry;
        cpu_state.scratchpad.raw.mem[cpu_state.p] = tmp0;
        cpu_state.flags.carry = (tmp0 > 0xFF);
        cpu_state.flags.zero = (cpu_state.scratchpad.raw.mem[cpu_state.p] == 0);
        cpu_state.cycles += 3;
        break;
    case 0xc5:          // "sbcm"       [P] - A - C -> [P]
        tmp0 = cpu_state.scratchpad.raw.mem[cpu_state.p];
        tmp0 -= cpu_state.scratchpad.regs.a;
        tmp0 -= cpu_state.flags.carry;
        cpu_state.scratchpad.raw.mem[cpu_state.p] = tmp0;
        cpu_state.flags.carry = (tmp0 < 0);
        cpu_state.flags.zero = (cpu_state.scratchpad.raw.mem[cpu_state.p] == 0);
        cpu_state.cycles += 3;
        break;
    default:
        sim_not_implemented();
        break;
    }
    cpu_state.pc += 1;
}

void sim_bcd(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    uint8_t b;
    uint16_t tmp;
    switch (instruction)
    {
    case 0x0c:        // "adn"  I -> d
                      //        b = A
                      //        repeat
                      //            [P] + b -> [P] (BCD)
                      //            b = 0
                      //            P - 1 -> P
                      //            d - 1 -> d
                      //        until d=FF
        fprintf(fp_memaccess, "adn - %d\r\n", cpu_state.d);
        cpu_state.d = cpu_state.scratchpad.regs.i;
        cpu_state.cycles += 7 + 3 * cpu_state.d;
        b = cpu_state.scratchpad.regs.a;
        cpu_state.flags.carry = 0;
        do
        {
            fprintf(fp_memaccess, "adn - ");
            tmp = add_bcd(cpu_state.scratchpad.raw.mem[cpu_state.p],
                          b,
                          cpu_state.flags.carry);
            cpu_state.scratchpad.raw.mem[cpu_state.p] = tmp & 0xFF;
            b = 0;
            cpu_state.flags.carry = (tmp > 0xFF);
            cpu_state.p -= 1;
            cpu_state.d -= 1;
        }
        while (cpu_state.d != 0xff);
        cpu_state.flags.zero = (cpu_state.scratchpad.raw.mem[cpu_state.p] == 0);
        break;
    case 0x0d:        // "sbn"  I -> d
                      //        repeat
                      //            [P] - A -> [P] (BCD)
                      //            P - 1 -> P
                      //            d - 1 -> d
                      //        until d=FF
        fprintf(fp_memaccess, "sbn - %d\r\n", cpu_state.d);
        cpu_state.d = cpu_state.scratchpad.regs.i;
        cpu_state.cycles += 7 + 3 * cpu_state.d;
        b = cpu_state.scratchpad.regs.a;
        cpu_state.flags.carry = 0;
        do
        {
            tmp = sub_bcd(cpu_state.scratchpad.raw.mem[cpu_state.p],
                          b,
                          cpu_state.flags.carry);
            cpu_state.scratchpad.raw.mem[cpu_state.p] = tmp & 0xFF;
            b = 0;
            cpu_state.flags.carry = (tmp > 0xFF);
            cpu_state.p -= 1;
            cpu_state.d -= 1;
        }
        while (cpu_state.d != 0xff);
        cpu_state.flags.zero = (cpu_state.scratchpad.raw.mem[cpu_state.p] == 0);
        break;
    case 0x0e:        // "adw"
        cpu_state.d = cpu_state.scratchpad.regs.i;
        fprintf(fp_memaccess, "adw - %d\r\n", cpu_state.d);
        cpu_state.cycles += 7 + 3 * cpu_state.d;
        cpu_state.flags.carry = 0;
        do
        {
            tmp = add_bcd(cpu_state.scratchpad.raw.mem[cpu_state.p],
                          cpu_state.scratchpad.raw.mem[cpu_state.q],
                          cpu_state.flags.carry);
            cpu_state.scratchpad.raw.mem[cpu_state.p] = tmp & 0xFF;
            cpu_state.flags.carry = (tmp > 0xFF);
            cpu_state.p -= 1;
            cpu_state.q -= 1;
            cpu_state.d -= 1;
        }
        while (cpu_state.d != 0xff);
        cpu_state.q -= 1;
        cpu_state.flags.zero = ((tmp & 0xFF) == 0);
        break;
    case 0x0f:        // "sbw"
        cpu_state.d = cpu_state.scratchpad.regs.i;
        fprintf(fp_memaccess, "sbw - %d\r\n", cpu_state.d);
        cpu_state.cycles += 7 + 3 * cpu_state.d;
        cpu_state.flags.carry = 0;
        do
        {
            tmp = sub_bcd(cpu_state.scratchpad.raw.mem[cpu_state.p],
                          cpu_state.scratchpad.raw.mem[cpu_state.q],
                          cpu_state.flags.carry);
            cpu_state.scratchpad.raw.mem[cpu_state.p] = tmp & 0xFF;
            cpu_state.flags.carry = (tmp > 0xFF);
            cpu_state.p -= 1;
            cpu_state.q -= 1;
            cpu_state.d -= 1;
        }
        while (cpu_state.d != 0xff);
        cpu_state.q -= 1;
        cpu_state.flags.zero = ((tmp & 0xFF) == 0);
        break;
    default:
        sim_not_implemented();
        break;
    }
    cpu_state.pc += 1;
}

void sim_bool(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    uint8_t tmp;
    switch (instruction)
    {
    case 0x46:        // "anma"
        cpu_state.scratchpad.raw.mem[cpu_state.p] &=
                                                    cpu_state.scratchpad.regs.a;
        cpu_state.flags.zero = (cpu_state.scratchpad.raw.mem[cpu_state.p] == 0);
        cpu_state.cycles += 3;
        break;
    case 0x47:        // "orma"
        cpu_state.scratchpad.raw.mem[cpu_state.p] |=
                                                    cpu_state.scratchpad.regs.a;
        cpu_state.flags.zero = (cpu_state.scratchpad.raw.mem[cpu_state.p] == 0);
        cpu_state.cycles += 3;
        break;
    case 0x60:        // "anim"
        cpu_state.pc += 1;
        cpu_state.scratchpad.raw.mem[cpu_state.p] &= read_mem(cpu_state.pc);
        cpu_state.flags.zero = (cpu_state.scratchpad.raw.mem[cpu_state.p] == 0);
        cpu_state.cycles += 4;
        break;
    case 0x61:        // "orim"
        cpu_state.pc += 1;
        cpu_state.scratchpad.raw.mem[cpu_state.p] |= read_mem(cpu_state.pc);
        cpu_state.flags.zero = (cpu_state.scratchpad.raw.mem[cpu_state.p] == 0);
        cpu_state.cycles += 4;
        break;
    case 0x62:        // "tsim"
        cpu_state.pc += 1;
        cpu_state.flags.zero = ((cpu_state.scratchpad.raw.mem[cpu_state.p] &
                                                  read_mem(cpu_state.pc)) == 0);
        cpu_state.cycles += 4;
        break;
    case 0x64:        // "ania"
        cpu_state.pc += 1;
        cpu_state.scratchpad.regs.a &= read_mem(cpu_state.pc);
        cpu_state.flags.zero = (cpu_state.scratchpad.regs.a == 0);
        cpu_state.cycles += 4;
        break;
    case 0x65:        // "oria"
        cpu_state.pc += 1;
        cpu_state.scratchpad.regs.a |= read_mem(cpu_state.pc);
        cpu_state.flags.zero = (cpu_state.scratchpad.regs.a == 0);
        cpu_state.cycles += 4;
        break;
    case 0x66:        // "tsia"
        cpu_state.pc += 1;
        cpu_state.flags.zero = ((cpu_state.scratchpad.regs.a &
                                                  read_mem(cpu_state.pc)) == 0);
        cpu_state.cycles += 4;
        break;
    case 0xc6:        // "tsma"
        // This instruction does not exist in the PC-1251 machine language
        //  manual and is never used in the disassembly of the ROM.
        cpu_state.flags.zero = ((cpu_state.scratchpad.raw.mem[cpu_state.p] &
                                             cpu_state.scratchpad.regs.a) == 0);
        cpu_state.cycles += 3;
        break;
    case 0xd4:        // "anid"
        cpu_state.pc += 1;
        tmp = read_mem(cpu_state.dp) & read_mem(cpu_state.pc);
        write_mem(cpu_state.dp, tmp);
        cpu_state.flags.zero = (tmp == 0);
        cpu_state.cycles += 6;
        break;
    case 0xd5:        // "orid"
        cpu_state.pc += 1;
        tmp = read_mem(cpu_state.dp) | read_mem(cpu_state.pc);
        write_mem(cpu_state.dp, tmp);
        cpu_state.flags.zero = (tmp == 0);
        cpu_state.cycles += 6;
        break;
    case 0xd6:        // "tsid"
        cpu_state.pc += 1;
        cpu_state.flags.zero = ((read_mem(cpu_state.dp) &
                                                  read_mem(cpu_state.pc)) == 0);
        cpu_state.cycles += 6;
        break;
    default:
        sim_not_implemented();
        break;
    }
    cpu_state.pc += 1;
}

void sim_cal(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    uint16_t new_pc;
    cpu_state.r -= 2;
    cpu_state.r &= 0x7F;
    if (instruction == 0x78)
    {
        // CALL instruction.
        cpu_state.scratchpad.raw.mem[cpu_state.r + 1] = (cpu_state.pc + 3) >> 8;
        cpu_state.scratchpad.raw.mem[cpu_state.r] = (cpu_state.pc + 3) & 0xFF;
        new_pc = read_mem(cpu_state.pc + 1) << 8;
        new_pc |= read_mem(cpu_state.pc + 2);
        cpu_state.pc = new_pc;
        cpu_state.cycles += 8;
    }
    else
    {
        // CAL instruction.
        cpu_state.scratchpad.raw.mem[cpu_state.r + 1] = (cpu_state.pc + 2) >> 8;
        cpu_state.scratchpad.raw.mem[cpu_state.r] = (cpu_state.pc + 2) & 0xFF;
        new_pc = (read_mem(cpu_state.pc) & 0x1F) << 8;
        new_pc |= read_mem(cpu_state.pc + 1);
        cpu_state.pc = new_pc;
        cpu_state.cycles += 7;
    }
}

void sim_carry(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    uint8_t tmp;
    switch (instruction)
    {
    case 0xd0:        // "sc"
        cpu_state.flags.carry = 1;
        break;
    case 0xd1:        // "rc"
        cpu_state.flags.carry = 0;
        break;
    default:
        sim_not_implemented();
        break;
    }
    cpu_state.flags.zero = 1;
    cpu_state.pc += 1;
    cpu_state.cycles += 2;
}

void sim_case(void)
{
}

void sim_cp(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    uint8_t tmp0, tmp1;
    switch (instruction)
    {
    case 0x63:        // "cpim"
        tmp0 = cpu_state.scratchpad.raw.mem[cpu_state.p];
        tmp1 = read_mem(cpu_state.pc + 1);
        cpu_state.pc += 2;
        cpu_state.cycles += 4;
        break;
    case 0x67:        // "cpia"
        tmp0 = cpu_state.scratchpad.regs.a;
        tmp1 = read_mem(cpu_state.pc + 1);
        cpu_state.pc += 2;
        cpu_state.cycles += 4;
        break;
    case 0xc7:        // "cpma"
        tmp0 = cpu_state.scratchpad.raw.mem[cpu_state.p];
        tmp1 = cpu_state.scratchpad.regs.a;
        cpu_state.pc += 1;
        cpu_state.cycles += 3;
        break;
    default:
        sim_not_implemented();
        break;
    }

    cpu_state.flags.carry = tmp0 < tmp1;
    cpu_state.flags.zero = (tmp0 == tmp1);
}

void sim_data(void)
{
    cpu_state.d = cpu_state.scratchpad.regs.i;
    cpu_state.cycles += 11 + 4 * cpu_state.d;
    uint16_t src = (cpu_state.scratchpad.regs.b << 8);
    src |= cpu_state.scratchpad.regs.a;
    do
    {
        cpu_state.scratchpad.raw.mem[cpu_state.p] = read_mem(src);
        cpu_state.p += 1;
        cpu_state.p &= 0x7F;
        src += 1;
        cpu_state.d -= 1;
    }
    while (cpu_state.d != 0xff);
    cpu_state.pc += 1;
}

void sim_default(void)
{
}

void sim_exa(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    uint8_t tmp;
    switch (instruction)
    {
    case 0xda:        // "exab"
        tmp = cpu_state.scratchpad.regs.b;
        cpu_state.scratchpad.regs.b = cpu_state.scratchpad.regs.a;
        cpu_state.scratchpad.regs.a = tmp;
        break;
    case 0xdb:        // "exam"
        tmp = cpu_state.scratchpad.regs.a;
        cpu_state.scratchpad.regs.a = cpu_state.scratchpad.raw.mem[cpu_state.p];
        cpu_state.scratchpad.raw.mem[cpu_state.p] = tmp;
        break;
    }
    cpu_state.cycles += 3;
    cpu_state.pc += 1;
}

void sim_fil(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    switch (instruction)
    {
    case 0x1e:      // "film"
        cpu_state.d = cpu_state.scratchpad.regs.i;
        fprintf(fp_memaccess, "film - %d\r\n", cpu_state.d);
        cpu_state.cycles += 5 + cpu_state.d;
        do
        {
            cpu_state.scratchpad.raw.mem[cpu_state.p] =
                                                    cpu_state.scratchpad.regs.a;
            cpu_state.p += 1;
            cpu_state.p &= 0x7F;
            cpu_state.d -= 1;
        }
        while (cpu_state.d != 0xff);
        break;
    case 0x1f:      // "fild"
        cpu_state.d = cpu_state.scratchpad.regs.i;
        fprintf(fp_memaccess, "fild - %d\r\n", cpu_state.d);
        cpu_state.cycles += 4 + 3 * cpu_state.d;
        do
        {
            write_mem(cpu_state.dp, cpu_state.scratchpad.regs.a);
            cpu_state.dp += 1;
            cpu_state.d -= 1;
        }
        while (cpu_state.d != 0xff);
        break;
    default:
        sim_not_implemented();
        break;
    }
    cpu_state.pc += 1;
}

void sim_incdec(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    uint16_t tmp;
    switch (instruction)
    {
    case 0x40:          // "inci"
        cpu_state.scratchpad.regs.i += 1;
        cpu_state.flags.carry = (cpu_state.scratchpad.regs.i == 0);
        cpu_state.flags.zero = (cpu_state.scratchpad.regs.i == 0);
        cpu_state.q = regnum(i);
        cpu_state.cycles += 4;
        break;
    case 0x41:          // "deci"
        cpu_state.scratchpad.regs.i -= 1;
        cpu_state.flags.carry = (cpu_state.scratchpad.regs.i == 0xFF);
        cpu_state.flags.zero = (cpu_state.scratchpad.regs.i == 0);
        cpu_state.q = regnum(i);
        cpu_state.cycles += 4;
        break;
    case 0x42:          // "inca"
        cpu_state.scratchpad.regs.a += 1;
        cpu_state.flags.carry = (cpu_state.scratchpad.regs.a == 0);
        cpu_state.flags.zero = (cpu_state.scratchpad.regs.a == 0);
        cpu_state.q = regnum(a);
        cpu_state.cycles += 4;
        break;
    case 0x43:          // "deca"
        cpu_state.scratchpad.regs.a -= 1;
        cpu_state.flags.carry = (cpu_state.scratchpad.regs.a == 0xFF);
        cpu_state.flags.zero = (cpu_state.scratchpad.regs.a == 0);
        cpu_state.q = regnum(a);
        cpu_state.cycles += 4;
        break;
    case 0x48:          // "inck"
        cpu_state.scratchpad.regs.k += 1;
        cpu_state.flags.carry = (cpu_state.scratchpad.regs.k == 0);
        cpu_state.flags.zero = (cpu_state.scratchpad.regs.k == 0);
        cpu_state.q = regnum(k);
        cpu_state.cycles += 4;
        break;
    case 0x49:          // "deck"
        cpu_state.scratchpad.regs.k -= 1;
        cpu_state.flags.carry = (cpu_state.scratchpad.regs.k == 0xFF);
        cpu_state.flags.zero = (cpu_state.scratchpad.regs.k == 0);
        cpu_state.q = regnum(k);
        cpu_state.cycles += 4;
        break;
    case 0x4a:          // "incm"
        cpu_state.scratchpad.regs.m += 1;
        cpu_state.flags.carry = (cpu_state.scratchpad.regs.m == 0);
        cpu_state.flags.zero = (cpu_state.scratchpad.regs.m == 0);
        cpu_state.q = regnum(m);
        cpu_state.cycles += 4;
        break;
    case 0x4b:          // "decm"
        cpu_state.scratchpad.regs.m -= 1;
        cpu_state.flags.carry = (cpu_state.scratchpad.regs.m == 0xFF);
        cpu_state.flags.zero = (cpu_state.scratchpad.regs.m == 0);
        cpu_state.q = regnum(m);
        cpu_state.cycles += 4;
        break;
    case 0x50:          // "incp"
        cpu_state.p += 1;
        cpu_state.p &= 0x7F;
        cpu_state.cycles += 2;
        break;
    case 0x51:          // "decp"
        cpu_state.p -= 1;
        cpu_state.p &= 0x7F;
        cpu_state.cycles += 2;
        break;
    case 0xc0:          // "incj"
        cpu_state.scratchpad.regs.j += 1;
        cpu_state.flags.carry = (cpu_state.scratchpad.regs.j == 0);
        cpu_state.flags.zero = (cpu_state.scratchpad.regs.j == 0);
        cpu_state.q = regnum(j);
        cpu_state.cycles += 4;
        break;
    case 0xc1:          // "decj"
        cpu_state.scratchpad.regs.j -= 1;
        cpu_state.flags.carry = (cpu_state.scratchpad.regs.j == 0xFF);
        cpu_state.flags.zero = (cpu_state.scratchpad.regs.j == 0);
        cpu_state.q = regnum(j);
        cpu_state.cycles += 4;
        break;
    case 0xc2:          // "incb"
        cpu_state.scratchpad.regs.b += 1;
        cpu_state.flags.carry = (cpu_state.scratchpad.regs.b == 0);
        cpu_state.flags.zero = (cpu_state.scratchpad.regs.b == 0);
        cpu_state.q = regnum(b);
        cpu_state.cycles += 4;
        break;
    case 0xc3:          // "decb"
        cpu_state.scratchpad.regs.b -= 1;
        cpu_state.flags.carry = (cpu_state.scratchpad.regs.b == 0xFF);
        cpu_state.flags.zero = (cpu_state.scratchpad.regs.b == 0);
        cpu_state.q = regnum(b);
        cpu_state.cycles += 4;
        break;
    case 0xc8:          // "incl"
        cpu_state.scratchpad.regs.l += 1;
        cpu_state.flags.carry = (cpu_state.scratchpad.regs.l == 0);
        cpu_state.flags.zero = (cpu_state.scratchpad.regs.l == 0);
        cpu_state.q = regnum(l);
        cpu_state.cycles += 4;
        break;
    case 0xc9:          // "decl"
        cpu_state.scratchpad.regs.l -= 1;
        cpu_state.flags.carry = (cpu_state.scratchpad.regs.l == 0xFF);
        cpu_state.flags.zero = (cpu_state.scratchpad.regs.l == 0);
        cpu_state.q = regnum(l);
        cpu_state.cycles += 4;
        break;
    case 0xca:          // "incn"
        cpu_state.scratchpad.regs.n += 1;
        cpu_state.flags.carry = (cpu_state.scratchpad.regs.n == 0);
        cpu_state.flags.zero = (cpu_state.scratchpad.regs.n == 0);
        cpu_state.q = regnum(n);
        cpu_state.cycles += 4;
        break;
    case 0xcb:          // "decn"
        cpu_state.scratchpad.regs.n -= 1;
        cpu_state.flags.carry = (cpu_state.scratchpad.regs.n == 0xFF);
        cpu_state.flags.zero = (cpu_state.scratchpad.regs.n == 0);
        cpu_state.q = regnum(n);
        cpu_state.cycles += 4;
        break;
    default:
        sim_not_implemented();
        break;
    }
    cpu_state.pc += 1;
}

void sim_io(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    switch (instruction)
    {
    case 0x4c:      // "ina"
        pt.ina();
        // TODO: Check.
        cpu_state.flags.zero = (cpu_state.scratchpad.regs.a == 0);
        cpu_state.cycles += 2;
        break;
    case 0x5d:      // "outa"
        pt.outa();
        cpu_state.cycles += 3;
        break;
    case 0x5f:      // "outf"
        pt.outf();
        cpu_state.cycles += 3;
        break;
    case 0xcc:      // "inb"
        pt.inb();
        cpu_state.flags.zero = (cpu_state.scratchpad.regs.a == 0);
        cpu_state.cycles += 2;
        break;
    case 0xdd:      // "outb"
        pt.outb();
        cpu_state.cycles += 2;
        break;
    case 0xdf:      // "outc"
        pt.outc();
        break;
    default:
        sim_not_implemented();
        break;
    }
    cpu_state.pc += 1;
}

void sim_jr(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    switch (instruction)
    {
    case 0x28:      // "jrnzp"
        if (cpu_state.flags.zero == 0)
        {
            cpu_state.pc += read_mem(cpu_state.pc + 1) + 1;
            cpu_state.cycles += 7;
            return;
        }
        break;
    case 0x29:      // "jrnzm"
        if (cpu_state.flags.zero == 0)
        {
            cpu_state.pc -= read_mem(cpu_state.pc + 1) - 1;
            cpu_state.cycles += 7;
            return;
        }
        break;
    case 0x2a:      // "jrncp"
        if (cpu_state.flags.carry == 0)
        {
            cpu_state.pc += read_mem(cpu_state.pc + 1) + 1;
            cpu_state.cycles += 7;
            return;
        }
        break;
    case 0x2b:      // "jrncm"
        if (cpu_state.flags.carry == 0)
        {
            cpu_state.pc -= read_mem(cpu_state.pc + 1) - 1;
            cpu_state.cycles += 7;
            return;
        }
        break;
    case 0x38:      // "jrzp"
        if (cpu_state.flags.zero == 1)
        {
            cpu_state.pc += read_mem(cpu_state.pc + 1) + 1;
            cpu_state.cycles += 7;
            return;
        }
        break;
    case 0x39:      // "jrzm"
        if (cpu_state.flags.zero == 1)
        {
            cpu_state.pc -= read_mem(cpu_state.pc + 1) - 1;
            cpu_state.cycles += 7;
            return;
        }
        break;
    case 0x3a:      // "jrcp"
        if (cpu_state.flags.carry != 0)
        {
            cpu_state.pc += read_mem(cpu_state.pc + 1) + 1;
            cpu_state.cycles += 7;
            return;
        }
        break;
    case 0x3b:      // "jrcm"
        if (cpu_state.flags.carry != 0)
        {
            cpu_state.pc -= read_mem(cpu_state.pc + 1) - 1;
            cpu_state.cycles += 7;
            return;
        }
        break;
    case 0x2c:      // "jrp"
        cpu_state.pc += read_mem(cpu_state.pc + 1) + 1;
        cpu_state.cycles += 7;
        return;
    case 0x2d:      // "jrm"
        cpu_state.pc -= read_mem(cpu_state.pc + 1) - 1;
        cpu_state.cycles += 7;
        return;
    default:
        sim_not_implemented();
        break;
    }
    cpu_state.pc += 2;
    cpu_state.cycles += 4;
}

void sim_jp(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    switch (instruction)
    {
    case 0x79:          // "jp"
        cpu_state.pc = (read_mem(cpu_state.pc + 1) << 8) +
                                                     read_mem(cpu_state.pc + 2);
        break;
    case 0x7c:          // "jpnz"
        if (cpu_state.flags.zero == 0)
            cpu_state.pc = (read_mem(cpu_state.pc + 1) << 8) +
                                                     read_mem(cpu_state.pc + 2);
        else
            cpu_state.pc += 3;
        break;
    case 0x7d:          // "jpnc"
        if (cpu_state.flags.carry == 0)
            cpu_state.pc = (read_mem(cpu_state.pc + 1) << 8) +
                                                     read_mem(cpu_state.pc + 2);
        else
            cpu_state.pc += 3;
        break;
    case 0x7e:          // "jpz"
        if (cpu_state.flags.zero != 0)
            cpu_state.pc = (read_mem(cpu_state.pc + 1) << 8) +
                                                     read_mem(cpu_state.pc + 2);
        else
            cpu_state.pc += 3;
        break;
    case 0x7f:          // "jpc"
        if (cpu_state.flags.carry != 0)
            cpu_state.pc = (read_mem(cpu_state.pc + 1) << 8) +
                                                     read_mem(cpu_state.pc + 2);
        else
            cpu_state.pc += 3;
        break;
    default:
        sim_not_implemented();
        break;
    }
    cpu_state.cycles += 6;
}

void sim_lr(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    uint8_t tmp;
    switch (instruction)
    {
    case 0x00:      // "lii"
        cpu_state.pc += 1;
        cpu_state.scratchpad.regs.i = read_mem(cpu_state.pc);
        cpu_state.cycles += 4;
        break;
    case 0x01:      // "lij"
        cpu_state.pc += 1;
        cpu_state.scratchpad.regs.j = read_mem(cpu_state.pc);
        cpu_state.cycles += 4;
        break;
    case 0x02:      // "lia"
        cpu_state.pc += 1;
        cpu_state.scratchpad.regs.a = read_mem(cpu_state.pc);
        cpu_state.cycles += 4;
        break;
    case 0x03:      // "lib"
        cpu_state.pc += 1;
        cpu_state.scratchpad.regs.b = read_mem(cpu_state.pc);
        cpu_state.cycles += 4;
        break;
    case 0x10:      // "lidp"
        cpu_state.pc += 2;
        cpu_state.dp = read_mem(cpu_state.pc - 1) << 8;
        cpu_state.dp |= read_mem(cpu_state.pc);
        cpu_state.cycles += 8;
        break;
    case 0x11:      // "lidl"
        cpu_state.pc += 1;
        cpu_state.dp &= 0xFF00;
        cpu_state.dp |= read_mem(cpu_state.pc);
        cpu_state.cycles += 5;
        break;
    case 0x12:      // "lip"
        cpu_state.pc += 1;
        cpu_state.p = read_mem(cpu_state.pc) & 0x7F;
        cpu_state.cycles += 4;
        break;
    case 0x13:      // "liq"
        cpu_state.pc += 1;
        cpu_state.q = read_mem(cpu_state.pc) & 0x7F;
        cpu_state.cycles += 4;
        break;
    case 0x20:      // "ldp"
        cpu_state.scratchpad.regs.a = cpu_state.p;
        cpu_state.cycles += 2;
        break;
    case 0x21:      // "ldq"
        cpu_state.scratchpad.regs.a = cpu_state.q;
        cpu_state.cycles += 4;
        break;
    case 0x22:      // "ldr"
        cpu_state.scratchpad.regs.a = cpu_state.r;
        cpu_state.cycles += 4;
        break;
    case 0x23:      // "ra"
        cpu_state.scratchpad.regs.a = 0;
        cpu_state.cycles += 4;
        break;
    case 0x54:      // "readm"
        cpu_state.scratchpad.raw.mem[cpu_state.p] = read_mem(cpu_state.pc + 1);
        cpu_state.cycles += 3;
        break;
    case 0x56:      // "read"
        cpu_state.scratchpad.regs.a = read_mem(cpu_state.pc + 1);
        cpu_state.cycles += 3;
        break;
    case 0x57:      // "ldd"
        cpu_state.scratchpad.regs.a = read_mem(cpu_state.dp);
        cpu_state.cycles += 3;
        break;
    case 0x58:      // "swp"
        tmp = (cpu_state.scratchpad.regs.a >> 4) & 0x0F;
        cpu_state.scratchpad.regs.a = cpu_state.scratchpad.regs.a << 4;
        cpu_state.scratchpad.regs.a |= tmp;
        cpu_state.cycles += 2;
        break;
    case 0x59:      // "ldm"
        cpu_state.scratchpad.regs.a = cpu_state.scratchpad.raw.mem[cpu_state.p];
        cpu_state.cycles += 2;
        break;
    default:
        sim_not_implemented();
        break;
    }
    cpu_state.pc += 1;
}

void sim_loop(void)
{
    cpu_state.scratchpad.raw.mem[cpu_state.r] -= 1;
    cpu_state.flags.carry = (cpu_state.scratchpad.raw.mem[cpu_state.r] == 0xFF);
    if (cpu_state.flags.carry == 0)
    {
        cpu_state.pc -= read_mem(cpu_state.pc + 1) - 1;
        cpu_state.cycles += 10;
    }
    else
    {
        cpu_state.r += 1;
        cpu_state.pc += 2;
        cpu_state.cycles += 7;
    }
}

void sim_leave(void)
{
    cpu_state.scratchpad.raw.mem[cpu_state.r] = 0;
    cpu_state.pc += 1;
    cpu_state.cycles += 2;
}

void sim_lp(void)
{
    cpu_state.p = read_mem(cpu_state.pc) & 0x3f;
    cpu_state.pc += 1;
    cpu_state.cycles += 2;
}

void sim_mv(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    int i;
    switch (instruction)
    {
    case 0x08:      // "mvw"
        cpu_state.d = cpu_state.scratchpad.regs.i;
        fprintf(fp_memaccess, "mvw - %d\r\n", cpu_state.d);
        cpu_state.cycles += 5 + 2 * cpu_state.d;
        do
        {
            cpu_state.scratchpad.raw.mem[cpu_state.p] =
                    cpu_state.scratchpad.raw.mem[cpu_state.q];
            cpu_state.p += 1;
            cpu_state.p &= 0x7F;
            cpu_state.q += 1;
            cpu_state.q &= 0x7F;
            cpu_state.d -= 1;
        }
        while (cpu_state.d != 0xff);
        break;
    case 0x09:      // "exw"
        cpu_state.d = cpu_state.scratchpad.regs.i;
        fprintf(fp_memaccess, "exw - %d\r\n", cpu_state.d);
        cpu_state.cycles += 6 + 3 * cpu_state.d;
        do
        {
            uint8_t tmp = cpu_state.scratchpad.raw.mem[cpu_state.p];
            cpu_state.scratchpad.raw.mem[cpu_state.p] =
                                      cpu_state.scratchpad.raw.mem[cpu_state.q];
            cpu_state.scratchpad.raw.mem[cpu_state.q] = tmp;
            cpu_state.p += 1;
            cpu_state.p &= 0x7F;
            cpu_state.q += 1;
            cpu_state.q &= 0x7F;
            cpu_state.d -= 1;
        }
        while (cpu_state.d != 0xff);
        break;
    case 0x0a:      // "mvb"
        cpu_state.d = cpu_state.scratchpad.regs.j;
        fprintf(fp_memaccess, "mvb - %d\r\n", cpu_state.d);
        cpu_state.cycles += 5 + 2 * cpu_state.d;
        do
        {
            cpu_state.scratchpad.raw.mem[cpu_state.p] =
                                      cpu_state.scratchpad.raw.mem[cpu_state.q];
            cpu_state.p += 1;
            cpu_state.p &= 0x7F;
            cpu_state.q += 1;
            cpu_state.q &= 0x7F;
            cpu_state.d -= 1;
        }
        while (cpu_state.d != 0xff);
        break;
    case 0x0b:      // "exb"
        cpu_state.d = cpu_state.scratchpad.regs.j;
        fprintf(fp_memaccess, "exb - %d\r\n", cpu_state.d);
        cpu_state.cycles += 6 + 3 * cpu_state.d;
        do
        {
            uint8_t tmp = cpu_state.scratchpad.raw.mem[cpu_state.p];
            cpu_state.scratchpad.raw.mem[cpu_state.p] =
                    cpu_state.scratchpad.raw.mem[cpu_state.q];
            cpu_state.scratchpad.raw.mem[cpu_state.q] = tmp;
            cpu_state.p += 1;
            cpu_state.p &= 0x7F;
            cpu_state.q += 1;
            cpu_state.q &= 0x7F;
            cpu_state.d -= 1;
        }
        while (cpu_state.d != 0xff);
        break;
    case 0x18:      // "mvwb"
        cpu_state.d = cpu_state.scratchpad.regs.i;
        fprintf(fp_memaccess, "mvwb - %d\r\n", cpu_state.d);
        cpu_state.cycles += 5 + 4 * cpu_state.d;
        do
        {
            cpu_state.scratchpad.raw.mem[cpu_state.p] = read_mem(cpu_state.dp);
            cpu_state.p += 1;
            cpu_state.p &= 0x7F;
            cpu_state.dp += 1;
            cpu_state.d -= 1;
        }
        while (cpu_state.d != 0xff);
        break;
    case 0x19:      // "exwd"
        cpu_state.d = cpu_state.scratchpad.regs.i;
        fprintf(fp_memaccess, "exwd - %d\r\n", cpu_state.d);
        cpu_state.cycles += 7 + 6 * cpu_state.d;
        do
        {
            uint8_t tmp = cpu_state.scratchpad.raw.mem[cpu_state.p];
            cpu_state.scratchpad.raw.mem[cpu_state.p] = read_mem(cpu_state.dp);
            write_mem(cpu_state.dp, tmp);
            cpu_state.p += 1;
            cpu_state.p &= 0x7F;
            cpu_state.dp += 1;
            cpu_state.d -= 1;
        }
        while (cpu_state.d != 0xff);
        break;
    case 0x1a:      // "mvbd"
        cpu_state.d = cpu_state.scratchpad.regs.j;
        fprintf(fp_memaccess, "mvbd - %d\r\n", cpu_state.d);
        cpu_state.cycles += 5 + 4 * cpu_state.d;
        do
        {
            cpu_state.scratchpad.raw.mem[cpu_state.p] = read_mem(cpu_state.dp);
            cpu_state.p += 1;
            cpu_state.p &= 0x7F;
            cpu_state.dp += 1;
            cpu_state.d -= 1;
        }
        while (cpu_state.d != 0xff);
        break;
    case 0x1b:      // "exbd"
        cpu_state.d = cpu_state.scratchpad.regs.j;
        fprintf(fp_memaccess, "exbd - %d\r\n", cpu_state.d);
        cpu_state.cycles += 7 + 6 * cpu_state.d;
        do
        {
            uint8_t tmp = cpu_state.scratchpad.raw.mem[cpu_state.p];
            cpu_state.scratchpad.raw.mem[cpu_state.p] = read_mem(cpu_state.dp);
            write_mem(cpu_state.dp, tmp);
            cpu_state.p += 1;
            cpu_state.p &= 0x7F;
            cpu_state.dp += 1;
            cpu_state.d -= 1;
        }
        while (cpu_state.d != 0xff);
        break;
    case 0x53:      // "mvdm"
        write_mem(cpu_state.dp, cpu_state.scratchpad.raw.mem[cpu_state.p]);
        cpu_state.cycles += 3;
        break;
    case 0x55:      // "mvmd"
        cpu_state.scratchpad.raw.mem[cpu_state.p] = read_mem(cpu_state.dp);
        cpu_state.cycles += 3;
        break;
    default:
        sim_not_implemented();
        break;
    }
    cpu_state.pc += 1;
}

void sim_nop(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    uint16_t tmp;
    switch (instruction)
    {
    case 0x4d:          // "nopw"
        cpu_state.cycles += 2;
        break;
    case 0xce:          // "nopt"
        cpu_state.cycles += 3;
        break;
    default:
        sim_not_implemented();
        break;
    }
    cpu_state.pc += 1;
}

void sim_rtn(void)
{
    cpu_state.pc = cpu_state.scratchpad.raw.mem[cpu_state.r + 1] << 8;
    cpu_state.pc |= cpu_state.scratchpad.raw.mem[cpu_state.r];
    cpu_state.r += 2;
    cpu_state.cycles += 4;
}

void sim_shift(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    uint16_t tmp;
    uint8_t shift_in_nibble = 0, a, b;
    uint16_t t;
    switch (instruction)
    {
    case 0x1c:          // "srw"
        cpu_state.d = cpu_state.scratchpad.regs.i;
        t = cpu_state.p;
        cpu_state.cycles += 5 + cpu_state.d;
        do
        {
            a = cpu_state.scratchpad.raw.mem[cpu_state.p] >> 4;
            b = cpu_state.scratchpad.raw.mem[cpu_state.p] & 0x0F;
            cpu_state.scratchpad.raw.mem[cpu_state.p] = a | shift_in_nibble;
            shift_in_nibble = b;
            cpu_state.p += 1;
            cpu_state.p &= 0x7F;
            cpu_state.d -= 1;
        }
        while (cpu_state.d != 0xff);
        break;
    case 0x1d:          // "slw"
        cpu_state.d = cpu_state.scratchpad.regs.i;
        t = cpu_state.p;
        cpu_state.cycles += 5 + cpu_state.d;
        do
        {
            a = cpu_state.scratchpad.raw.mem[cpu_state.p] >> 4;
            b = cpu_state.scratchpad.raw.mem[cpu_state.p] & 0x0F;
            cpu_state.scratchpad.raw.mem[cpu_state.p] = (b << 4) | shift_in_nibble;
            shift_in_nibble = a;
            cpu_state.p -= 1;
            cpu_state.p &= 0x7F;
            cpu_state.d -= 1;
        }
        while (cpu_state.d != 0xff);
        break;
    case 0x5a:          // "sl"
        tmp = cpu_state.scratchpad.regs.a;
        tmp = (tmp << 1) | cpu_state.flags.carry;
        cpu_state.scratchpad.regs.a = tmp;
        cpu_state.flags.carry = ((tmp & ~0xFF) != 0);
        cpu_state.cycles += 2;
        break;
    case 0xd2:          // "sr"
        tmp = cpu_state.scratchpad.regs.a << 8;
        tmp = (tmp >> 1) | (cpu_state.flags.carry << 15);
        cpu_state.scratchpad.regs.a = tmp >> 8;
        cpu_state.flags.carry = ((tmp & 0xFF) != 0);
        cpu_state.cycles += 2;
        break;
    default:
        sim_not_implemented();
        break;
    }
    cpu_state.pc += 1;
}

void sim_stack(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    switch (instruction)
    {
    case 0x34:          // "push"
        cpu_state.r -= 1;
        cpu_state.r &= 0x7F;
        cpu_state.scratchpad.raw.mem[cpu_state.r] = cpu_state.scratchpad.regs.a;
        cpu_state.cycles += 3;
        break;
    case 0x5b:          // "pop"
        cpu_state.scratchpad.regs.a = cpu_state.scratchpad.raw.mem[cpu_state.r];
        cpu_state.r += 1;
        cpu_state.r &= 0x7F;
        cpu_state.cycles += 2;
        break;
    default:
        sim_not_implemented();
        break;
    }
    cpu_state.pc += 1;
}

void sim_store(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    uint16_t tmp;
    switch (instruction)
    {
    case 0x30:          // "stp"
        cpu_state.p = cpu_state.scratchpad.regs.a & 0x7F;
        break;
    case 0x31:          // "stq"
        cpu_state.q = cpu_state.scratchpad.regs.a & 0x7F;
        break;
    case 0x32:          // "str"
        cpu_state.r = cpu_state.scratchpad.regs.a & 0x7F;
        break;
    case 0x52:          // "std"
        write_mem(cpu_state.dp, cpu_state.scratchpad.regs.a);
        break;
    default:
        sim_not_implemented();
        break;
    }
    cpu_state.pc += 1;
    cpu_state.cycles += 2;
}

void sim_table(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    uint16_t pc;
    switch (instruction)
    {
    case 0x69:          // "dtj"
        cpu_state.pc += 1;
        int i;
        for (i = 0; i < cpu_state.table_items; i++)
        {
            if (cpu_state.scratchpad.regs.a == read_mem(cpu_state.pc))
            {
                // We have found a match.
                pc = read_mem(cpu_state.pc + 1) << 8;
                pc |= read_mem(cpu_state.pc + 2);
                cpu_state.pc = pc;
                cpu_state.cycles += 2;        // TODO: Check this value.
                return;
            }
            cpu_state.pc += 3;
        }

        if (i == cpu_state.table_items)
        {
            // We did not find a match. Call the default handler.
            pc = read_mem(cpu_state.pc) << 8;
            pc |= read_mem(cpu_state.pc + 1);
            cpu_state.pc = pc;
            cpu_state.cycles += 2;        // TODO: Check this value.
        }
        break;
    case 0x7A:          // "ptj"
        cpu_state.pc += 1;
        cpu_state.table_items = read_mem(cpu_state.pc);

        // We'll put the return address in the stack right away.
        cpu_state.r -= 2;
        cpu_state.scratchpad.raw.mem[cpu_state.r + 1] =
                                                     read_mem(cpu_state.pc + 1);
        cpu_state.scratchpad.raw.mem[cpu_state.r] = read_mem(cpu_state.pc + 2);
        cpu_state.pc += 3;
        cpu_state.cycles += 3;
        return;
    default:
        sim_not_implemented();
        break;
    }
}

void sim_test(void)
{
// bit  Name    meaning
//  0    CT1    True if 512ms spent since the last counter reset.
//  1    CT2    True if 2ms spent since the last counter reset.
//  2
//  3    Kon    True if [BRK] key is pressed.
//  4
//  5
//  6    RST    True if we are reseting (False in case of powerup, else True in
//               case of reset)
//  7    Xin    Value of Xin
    uint8_t test =  (cpu_state.test.xin << 7) +
                    (cpu_state.test.rst << 6) +
                    (cpu_state.test.kon << 3) +
                    (cpu_state.test.ct2 << 1) +
                     cpu_state.test.ct1;
    test &= read_mem(cpu_state.pc + 1);
    cpu_state.flags.zero = (test == 0);
    cpu_state.cycles += 4;
    cpu_state.pc += 2;
}

void sim_wait(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    switch (instruction)
    {
    case 0x4e:      // "wait"
        cpu_state.pc += 1;
        cpu_state.cycles += 6 + read_mem(cpu_state.pc);
        break;
    case 0x4f:      // "waiti"
        cpu_state.cycles += 5 + 4 * cpu_state.scratchpad.regs.i;
        break;
    default:
        sim_not_implemented();
        break;
    }
    cpu_state.pc += 1;
}

void sim_xy(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    uint16_t x, y;
    switch (instruction)
    {
    case 0x04:      // "ix"
        cpu_state.scratchpad.regs.xreg.x += 1;
        cpu_state.dp = cpu_state.scratchpad.regs.xreg.x;
        cpu_state.q = regnum(xreg.b.xh);
        cpu_state.cycles += 6;
        break;
    case 0x05:      // "dx"
        cpu_state.scratchpad.regs.xreg.x -= 1;
        cpu_state.dp = cpu_state.scratchpad.regs.xreg.x;
        cpu_state.q = regnum(xreg.b.xh);
        cpu_state.cycles += 6;
        break;
    case 0x06:      // "iy"
        cpu_state.scratchpad.regs.yreg.y += 1;
        cpu_state.dp = cpu_state.scratchpad.regs.yreg.y;
        cpu_state.q = regnum(yreg.b.yh);
        cpu_state.cycles += 6;
        break;
    case 0x07:      // "dy"
        cpu_state.scratchpad.regs.yreg.y -= 1;
        cpu_state.dp = cpu_state.scratchpad.regs.yreg.y;
        cpu_state.q = regnum(yreg.b.yh);
        cpu_state.cycles += 6;
        break;
    case 0x24:      // "ixl"
        cpu_state.scratchpad.regs.xreg.x += 1;
        cpu_state.dp = cpu_state.scratchpad.regs.xreg.x;
        cpu_state.scratchpad.regs.a = read_mem(cpu_state.dp);
        cpu_state.q = regnum(xreg.b.xh);
        cpu_state.cycles += 7;
        break;
    case 0x25:      // "dxl"
        cpu_state.scratchpad.regs.xreg.x -= 1;
        cpu_state.dp = cpu_state.scratchpad.regs.xreg.x;
        cpu_state.scratchpad.regs.a = read_mem(cpu_state.dp);
        cpu_state.q = regnum(xreg.b.xh);
        cpu_state.cycles += 7;
        break;
    case 0x26:      // "iys"
        cpu_state.scratchpad.regs.yreg.y += 1;
        cpu_state.dp = cpu_state.scratchpad.regs.yreg.y;
        write_mem(cpu_state.dp, cpu_state.scratchpad.regs.a);
        cpu_state.q = regnum(yreg.b.yh);
        cpu_state.cycles += 6;
        break;
    case 0x27:      // "dys"
        cpu_state.scratchpad.regs.yreg.y -= 1;
        cpu_state.dp = cpu_state.scratchpad.regs.yreg.y;
        write_mem(cpu_state.dp, cpu_state.scratchpad.regs.a);
        cpu_state.q = regnum(yreg.b.yh);
        cpu_state.cycles += 6;
        break;
    default:
        sim_not_implemented();
        break;
    }
    cpu_state.pc += 1;
}

static int32_t ptj_count_tmp = -1;
static int32_t ptj_count = -1;

const sc61860_instr_t sc61860_instr[] =
{
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x00, "lii", sim_lr},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x01, "lij", sim_lr},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x02, "lia", sim_lr},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x03, "lib", sim_lr},
    {SC61860_FORMAT_NOOPERAND + (6 << 8) + 1,   0xFF, 0x04, "ix", sim_xy},
    {SC61860_FORMAT_NOOPERAND + (6 << 8) + 1,   0xFF, 0x05, "dx", sim_xy},
    {SC61860_FORMAT_NOOPERAND + (6 << 8) + 1,   0xFF, 0x06, "iy", sim_xy},
    {SC61860_FORMAT_NOOPERAND + (6 << 8) + 1,   0xFF, 0x07, "dy", sim_xy},
    {SC61860_FORMAT_NOOPERAND + (0x25 << 8) + 1, 0xFF, 0x08, "mvw", sim_mv},
    {SC61860_FORMAT_NOOPERAND + (0x36 << 8) + 1, 0xFF, 0x09, "exw", sim_mv},
    {SC61860_FORMAT_NOOPERAND + (0x25 << 8) + 1, 0xFF, 0x0A, "mvb", sim_mv},
    {SC61860_FORMAT_NOOPERAND + (0x36 << 8) + 1, 0xFF, 0x0b, "exb", sim_mv},
    {SC61860_FORMAT_NOOPERAND + (0x36 << 8) + 1, 0xFF, 0x0c, "adn", sim_bcd},
    {SC61860_FORMAT_NOOPERAND + (0x36 << 8) + 1, 0xFF, 0x0d, "sbn", sim_bcd},
    {SC61860_FORMAT_NOOPERAND + (0x36 << 8) + 1, 0xFF, 0x0e, "adw", sim_bcd},
    {SC61860_FORMAT_NOOPERAND + (0x36 << 8) + 1, 0xFF, 0x0f, "sbw", sim_bcd},
    {SC61860_FORMAT_IMMEDIATE16 + (8 << 8) + 3, 0xFF, 0x10, "lidp", sim_lr},
    {SC61860_FORMAT_IMMEDIATE8 + (5 << 8) + 2, 0xFF, 0x11, "lidl", sim_lr},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x12, "lip", sim_lr},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x13, "liq", sim_lr},
    {SC61860_FORMAT_NOOPERAND + (0x5 << 8) + 1, 0xFF, 0x14, "adb", sim_arith},
    {SC61860_FORMAT_NOOPERAND + (0x5 << 8) + 1, 0xFF, 0x15, "sbb", sim_arith},
    {SC61860_FORMAT_CASE + (0x3 << 8) + 3, 0xFF, 0x16, ".case", sim_case},
    {SC61860_FORMAT_DEFAULT + (0x3 << 8) + 3, 0xFF, 0x17, ".default", sim_default},
    {SC61860_FORMAT_NOOPERAND + (0x45 << 8) + 1, 0xFF, 0x18, "mvwd", sim_mv},
    {SC61860_FORMAT_NOOPERAND + (0x67 << 8) + 1, 0xFF, 0x19, "exwd", sim_mv},
    {SC61860_FORMAT_NOOPERAND + (0x45 << 8) + 1, 0xFF, 0x1a, "mvbd", sim_mv},
    {SC61860_FORMAT_NOOPERAND + (0x67 << 8) + 1, 0xFF, 0x1b, "exbd", sim_mv},
    {SC61860_FORMAT_NOOPERAND + (0x15 << 8) + 1, 0xFF, 0x1c, "srw", sim_shift},
    {SC61860_FORMAT_NOOPERAND + (0x15 << 8) + 1, 0xFF, 0x1d, "slw", sim_shift},
    {SC61860_FORMAT_NOOPERAND + (0x15 << 8) + 1, 0xFF, 0x1e, "film", sim_fil},
    {SC61860_FORMAT_NOOPERAND + (0x34 << 8) + 1, 0xFF, 0x1f, "fild", sim_fil},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x20, "ldp", sim_lr},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x21, "ldq", sim_lr},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x22, "ldr", sim_lr},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x23, "ra", sim_lr},
    {SC61860_FORMAT_NOOPERAND + (7 << 8) + 1, 0xFF, 0x24, "ixl", sim_xy},
    {SC61860_FORMAT_NOOPERAND + (7 << 8) + 1, 0xFF, 0x25, "dxl", sim_xy},
    {SC61860_FORMAT_NOOPERAND + (7 << 8) + 1, 0xFF, 0x26, "iys", sim_xy},
    {SC61860_FORMAT_NOOPERAND + (7 << 8) + 1, 0xFF, 0x27, "dys", sim_xy},
    {SC61860_FORMAT_RELATIVE_PLUS + (0x47 << 8) + 2, 0xFF, 0x28, "jrnzp", sim_jr},
    {SC61860_FORMAT_RELATIVE_MINUS + (0x47 << 8) + 2, 0xFF, 0x29, "jrnzm", sim_jr},
    {SC61860_FORMAT_RELATIVE_PLUS + (0x47 << 8) + 2, 0xFF, 0x2a, "jrncp", sim_jr},
    {SC61860_FORMAT_RELATIVE_MINUS + (0x47 << 8) + 2, 0xFF, 0x2b, "jrncm", sim_jr},
    {SC61860_FORMAT_RELATIVE_PLUS + (7 << 8) + 2, 0xFF, 0x2c, "jrp", sim_jr},
    {SC61860_FORMAT_RELATIVE_MINUS + (7 << 8) + 2, 0xFF, 0x2d, "jrm", sim_jr},
    {SC61860_FORMAT_RELATIVE_MINUS + (0x7a << 8) + 2, 0xFF, 0x2f, "loop", sim_loop},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x30, "stp", sim_store},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x31, "stq", sim_store},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x32, "str", sim_store},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x34, "push", sim_stack},
    {SC61860_FORMAT_NOOPERAND + (0x4b << 8) + 1, 0xFF, 0x35, "data", sim_data},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0x37, "rtn", sim_rtn},
    {SC61860_FORMAT_RELATIVE_PLUS + (0x47 << 8) + 2, 0xFF, 0x38, "jrzp", sim_jr},
    {SC61860_FORMAT_RELATIVE_MINUS + (0x47 << 8) + 2, 0xFF, 0x39, "jrzm", sim_jr},
    {SC61860_FORMAT_RELATIVE_PLUS + (0x47 << 8) + 2, 0xFF, 0x3a, "jrcp", sim_jr},
    {SC61860_FORMAT_RELATIVE_MINUS + (0x47 << 8) + 2, 0xFF, 0x3b, "jrcm", sim_jr},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0x40, "inci", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0x41, "deci", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0x42, "inca", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0x43, "deca", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x44, "adm", sim_arith},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x45, "sbm", sim_arith},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x46, "anma", sim_bool},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x47, "orma", sim_bool},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0x48, "inck", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0x49, "deck", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0x4a, "incm", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0x4b, "decm", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x4c, "ina", sim_io},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x4d, "nopw", sim_nop},
    {SC61860_FORMAT_IMMEDIATE8 + (0xF4 << 8) + 2, 0xFF, 0x4e, "wait", sim_wait},
    {SC61860_FORMAT_NOOPERAND + (0x45 << 8) + 1, 0xFF, 0x4f, "waiti", sim_wait},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x50, "incp", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x51, "decp", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x52, "std", sim_store},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x53, "mvdm", sim_mv},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x54, "readm", sim_lr},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x55, "mvmd", sim_mv},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x56, "read", sim_lr},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x57, "ldd", sim_lr},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x58, "swp", sim_lr},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x59, "ldm", sim_lr},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x5a, "sl", sim_shift},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x5b, "pop", sim_stack},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x5d, "outa", sim_io},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x5f, "outf", sim_io},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x60, "anim", sim_bool},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x61, "orim", sim_bool},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x62, "tsim", sim_bool},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x63, "cpim", sim_cp},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x64, "ania", sim_bool},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x65, "oria", sim_bool},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x66, "tsia", sim_bool},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x67, "cpia", sim_cp},
    {SC61860_FORMAT_DTJ + (0 << 8) + 1, 0xFF, 0x69, "dtj", sim_table},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x6b, "test", sim_test},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x70, "adim", sim_arith},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x71, "sbim", sim_arith},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x74, "adia", sim_arith},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x75, "sbia", sim_arith},
    {SC61860_FORMAT_ADDRESS16 + (8 << 8) + 3, 0xFF, 0x78, "call", sim_cal},
    {SC61860_FORMAT_ADDRESS16 + (6 << 8) + 3, 0xFF, 0x79, "jp", sim_jp},
    {SC61860_FORMAT_PTJ + (9 << 8) + 4, 0xFF, 0x7a, "ptj", sim_table},
    {SC61860_FORMAT_ADDRESS16 + (6 << 8) + 3, 0xFF, 0x7c, "jpnz", sim_jp},
    {SC61860_FORMAT_ADDRESS16 + (6 << 8) + 3, 0xFF, 0x7d, "jpnc", sim_jp},
    {SC61860_FORMAT_ADDRESS16 + (6 << 8) + 3, 0xFF, 0x7e, "jpz", sim_jp},
    {SC61860_FORMAT_ADDRESS16 + (6 << 8) + 3, 0xFF, 0x7f, "jpc", sim_jp},
    {SC61860_FORMAT_IMMEDIATE6 + (1 << 8) + 1, 0xC0, 0x80, "lp", sim_lp},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0xc0, "incj", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0xc1, "decj", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0xc2, "incb", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0xc3, "decb", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0xc4, "adcm", sim_arith},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0xc5, "sbcm", sim_arith},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0xc6, "tsma", sim_bool},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0xc7, "cpma", sim_cp},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0xc8, "incl", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0xc9, "decl", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0xca, "incn", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0xcb, "decn", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0xcc, "inb", sim_io},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0xce, "nopt", sim_nop},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0xd0, "sc", sim_carry},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0xd1, "rc", sim_carry},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0xd2, "sr", sim_shift},
    {SC61860_FORMAT_IMMEDIATE8 + (6 << 8) + 2, 0xFF, 0xd4, "anid", sim_bool},
    {SC61860_FORMAT_IMMEDIATE8 + (6 << 8) + 2, 0xFF, 0xd5, "orid", sim_bool},
    {SC61860_FORMAT_IMMEDIATE8 + (6 << 8) + 2, 0xFF, 0xd6, "tsid", sim_bool},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0xd8, "leave", sim_leave},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0xda, "exab", sim_exa},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0xdb, "exam", sim_exa},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0xdd, "outb", sim_io},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0xdf, "outc", sim_io},
    {SC61860_FORMAT_ADDRESS13 + (7 << 8) + 2, 0xe0, 0xe0, "cal", sim_cal},
    {SC61860_FORMAT_TERM, 0, 0, "", sim_not_implemented},
};

static void print_shift(char* p, int32_t len)
{
    int32_t character_count = strlen(p);
    while (character_count++ < len)
        strcat(p, " ");
    // Print an extra blank so there is at least one buffer blank.
    strcat(p, " ");
}


static size_t print_instruction(uint16_t address,
                                uint8_t instruction,
                                uint32_t index,
                                char *p)
{
    uint8_t operand0, operand1, operand2;
    uint16_t target_address;

    int32_t imm;
    switch (sc61860_instr[index].attributes & 0xFF000000)
    {
    case SC61860_FORMAT_IMMEDIATE8:
        operand0 = pt.read_memory(address + 1);
        sprintf(p,
                "%02X %02X        %s",
                instruction,
                operand0,
                sc61860_instr[index].opcode);
        print_shift(p, OPERAND_COLUMN);
        sprintf(p + strlen(p), "$%02X", operand0);
        break;
    case SC61860_FORMAT_NOOPERAND:
        sprintf(p,
                "%02X           %s",
                instruction,
                sc61860_instr[index].opcode);
        break;
    case SC61860_FORMAT_IMMEDIATE16:
        operand0 = pt.read_memory(address + 1);
        operand1 = pt.read_memory(address + 2);
        sprintf(p,
                "%02X %02X %02X     %s",
                instruction,
                operand0,
                operand1,
                sc61860_instr[index].opcode);
        print_shift(p, OPERAND_COLUMN);
        sprintf(p + strlen(p), "$%04X", operand0 * 256 + operand1);
        break;
    case SC61860_FORMAT_ADDRESS16:
        operand0 = pt.read_memory(address + 1);
        operand1 = pt.read_memory(address + 2);
        sprintf(p,
                "%02X %02X %02X     %s",
                instruction,
                operand0,
                operand1,
                sc61860_instr[index].opcode);
        print_shift(p, OPERAND_COLUMN);
        sprintf(p + strlen(p), "$%04X", operand0 * 256 + operand1);
        break;
    case SC61860_FORMAT_IMMEDIATE6:
        operand0 = instruction & 0x3F;
        sprintf(p,
                "%02X           %s",
                instruction,
                sc61860_instr[index].opcode);
        print_shift(p, OPERAND_COLUMN);
        sprintf(p + strlen(p), "$%02X", operand0);
        break;
    case SC61860_FORMAT_ADDRESS13:
        operand0 = instruction & 0x1F;
        operand1 = pt.read_memory(address + 1);
        sprintf(p,
                "%02X %02X        %s",
                instruction,
                operand1,
                sc61860_instr[index].opcode);
        print_shift(p, OPERAND_COLUMN);
        target_address = operand0 * 256 + operand1;
        sprintf(p + strlen(p), "$%04X", target_address);

        // Search the address descriptors to see if we can match this address
        //  to one of the well known ones.
        imm = 0;
        while (address_descriptors[imm].label != 0)
        {
            if (target_address == address_descriptors[imm].address)
            {
                sprintf(p + strlen(p),
                        "        ; %s",
                        address_descriptors[imm].label);
                break;
            }
            imm++;
        }
        break;
    case SC61860_FORMAT_RELATIVE_PLUS:
        operand0 = pt.read_memory(address + 1);
        sprintf(p,
                "%02X %02X        %s",
                instruction,
                operand1,
                sc61860_instr[index].opcode);
        print_shift(p, OPERAND_COLUMN);
        sprintf(p + strlen(p), "$%04X", address + operand0 + 1);
        break;
    case SC61860_FORMAT_RELATIVE_MINUS:
        operand0 = pt.read_memory(address + 1);
        sprintf(p,
                "%02X %02X        %s",
                instruction,
                operand1,
                sc61860_instr[index].opcode);
        print_shift(p, OPERAND_COLUMN);
        sprintf(p + strlen(p), "$%04X", address - operand0 + 1);
        break;
    case SC61860_FORMAT_PTJ:
        operand0 = pt.read_memory(address + 1);
        ptj_count_tmp = operand0;
        sprintf(p, "%02X %02X ", instruction, operand0);
        operand0 = pt.read_memory(address + 2);
        operand1 = pt.read_memory(address + 3);
        sprintf(p + strlen(p),
                "%02X %02X  %s",
                operand0,
                operand1,
                sc61860_instr[index].opcode);
        print_shift(p, OPERAND_COLUMN);
        operand0 = pt.read_memory(address + 1);
        sprintf(p + strlen(p), "$%02X, ", operand0);
        operand0 = pt.read_memory(address + 2);
        operand1 = pt.read_memory(address + 3);
        sprintf(p + strlen(p), "$%04X", operand0 * 256 + operand1);
        break;
    case SC61860_FORMAT_DTJ:
        sprintf(p,
                "%02X           %s",
                instruction,
                sc61860_instr[index].opcode);
        ptj_count = ptj_count_tmp;
        break;
    case SC61860_FORMAT_CASE:
        sprintf(p,
                "%02X %02X %02X     .case",
                pt.read_memory(address),
                pt.read_memory(address + 1),
                pt.read_memory(address + 2));
        print_shift(p, OPERAND_COLUMN);
        sprintf(p + strlen(p),
                "$%02X, $%04X",
                pt.read_memory(address),
                pt.read_memory(address + 1) * 256 +
                                                   pt.read_memory(address + 2));
        ptj_count -= 1;
        break;
    case SC61860_FORMAT_DEFAULT:
        sprintf(p,
                "%02X %02X        .default",
                pt.read_memory(address),
                pt.read_memory(address + 1));
        print_shift(p, OPERAND_COLUMN);
        sprintf(p + strlen(p),
                "$%04X",
                pt.read_memory(address) * 256 +
                                                   pt.read_memory(address + 1));
        ptj_count -= 1;
        break;
    default:
        break;
    }
    return sc61860_instr[index].attributes & 0xFF;
}

uint32_t sc61860_disassembler(uint16_t address, uint8_t instruction, char *p)
{
    sprintf(p, "%04X: ", address);
    uint32_t i = 0;
    while (sc61860_instr[i].attributes != 0)
    {
        if ((instruction & sc61860_instr[i].mask) ==
                                           sc61860_instr[i].mask_value)
        {
            // If the string pointer is null we are going to return only
            //  the number of bytes of the instruciton, either 2 or 4.
            if (p != 0)
            {
                return print_instruction(address,
                                         instruction,
                                         i,
                                         p + strlen(p));
            }
        }
        i++;
    }
    // Unrecognized instruction.
    sprintf(p, "%04X: %02X           ???", address, instruction);
    return 1;
}
