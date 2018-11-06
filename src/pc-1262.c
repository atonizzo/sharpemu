// Copyright (c) 2016-2018, atonizzo@hotmail.com
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

#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <sc61860_emu.h>

#include <pc1262.h>

GtkWidget *lcd_label_box;
GtkWidget *lcd_display[LCD_CHARACTER_ROWS][LCD_CHARACTER_PER_ROW]
                            [LCD_COLUMNS_PER_CHARACTER][LCD_PIXEL_PER_COLUMN];

address_descriptor_t address_descriptors[] =
{
};

label_descriptor_t label_descriptor[] =
{
    {0xF83C, {{0, "DEF"},  {0, "P"},     {0, "G"},       {0, "DE"},
              {0, 0},      {0, 0},       {0, 0},         {0, 0}}},
    {0xF83D, {{0, "BUSY"}, {0, "SHIFT"}, {0, "RAD"},     {0, "E"},
              {0, 0},      {0, 0},       {0, 0},         {0, 0}}},
    {0xF83E, {{0, "PRO"},  {0, "RUN"},   {0, "RESERVE"}, {0, "E"},
              {0, 0},      {0, 0},       {0, 0},         {0, 0}}},
    {0,      {{0, 0},      {0, 0},       {0, 0},         {0, 0},
              {0, 0},      {0, 0},       {0, 0},         {0, 0}}},
};

static uint8_t pc_1262_read_memory(uint32_t address)
{
    return memory_image[address];
}

static void pc_1262_write_memory(uint32_t address, uint8_t value)
{
    // LCD memory.
/*    if (((address >= sc43536_base_address[0]) &&
         (address <= sc43536_base_address[0] + 0x7F)))
    {
        memory_image[address] = value;
        pc12xx_lcd_service(address, value);
        return;
    }*/

    if (address == 0x8000)
        __break__

    // RAM memory.
    if ((address >= pt.ram_begin) && (address < pt.ram_end))
    {
        memory_image[address] = value;
        return;
    }

    // LCD memory. The PC-1262 has 2 rows of LCD.
    int i;
    uint16_t column;
    for (i = 0; i < NUMBER_OF_SC43536; i++)
    {
        if (((address >= sc43536_base_address[i]) &&
             (address <= sc43536_base_address[i] + 0x7F)))
        {
            memory_image[address] = value;
            if (address < sc43536_base_address[i] + 0x3C)
                column = address - sc43536_base_address[i];
            else
                column = address - sc43536_base_address[i] - 4;
            __break__
            sc43536_service(i, address, column, value);
            break;
        }
    }
}

// Port A is used exclusively for the keyboard. We scan which of the 11 bits
//  in PortB[3:1] and PortA[8:1] are being driven by the keyboard scan routine.
// The bits being driven are those set in cpu_state.porta or cpu_state.portb
//  and only one of these bits is set at any given point in time.
// If any of them is set, we seek the porta_kbd[] array to see if any key
//  has been pressed.
static void pc_1262_ina(void)
{
    uint16_t id = ((cpu_state.portb & 0x07) << 8) | cpu_state.porta;
    int i;

    uint8_t mask = 0xFE;
    for (i = 0; i < sizeof(porta_kbd); i++)
    {
        if ((id & (1 << i)) != 0)
        {
            if (porta_kbd[i] != 0)
            {
                if ((keyboard_count.id != id) ||
                                           (keyboard_count.kbd != porta_kbd[i]))
                {
                    keyboard_count.id = id;
                    keyboard_count.kbd = porta_kbd[i];
                    keyboard_count.count = 0;
                }
                keyboard_count.count += 1;
            }

            if (keyboard_count.count < 3)
                cpu_state.scratchpad.regs.a = porta_kbd[i];
            else
                cpu_state.scratchpad.regs.a = 0;
            if (i < 8)
            {
                // If we are driving any bits of cpu_state.porta also return
                //  the bits being driven.
                cpu_state.scratchpad.regs.a |= cpu_state.porta;
            }

            return;
        }
    }

    // Should never be here...
    cpu_state.scratchpad.regs.a = 0;
}

static void pc_1262_inb(void)
{
    cpu_state.scratchpad.regs.a = calculator_mode;
}

static void pc_1262_outa(void)
{
    cpu_state.porta = cpu_state.scratchpad.raw.mem[PORTA_OFFSET];
}

static void pc_1262_outb(void)
{
    cpu_state.portb = cpu_state.scratchpad.raw.mem[PORTB_OFFSET];
}

static void pc_1262_outc(void)
{
    fprintf(fp_memaccess,
            "S: %04x W: PORTC - %02X\r\n",
            cpu_state.pc,
            cpu_state.scratchpad.raw.mem[PORTC_OFFSET]);

    if ((cpu_state.scratchpad.raw.mem[PORTC_OFFSET] & PORTC_BITS_CNTRST) != 0)
    {
        fprintf(fp_memaccess, "S: %04x Counter is reset\r\n", cpu_state.pc);
        printf("Timer cleared\r\n");
        gettimeofday(&timeval_start, NULL);
        cpu_state.scratchpad.raw.mem[PORTC_OFFSET] &= ~PORTC_BITS_CNTRST;
    }
    if ((cpu_state.scratchpad.raw.mem[PORTC_OFFSET] & PORTC_BITS_HLT) != 0)
    {
        fprintf(fp_memaccess, "S: %04x CPU is halted.\r\n", cpu_state.pc);
    }
    cpu_state.portc = cpu_state.scratchpad.raw.mem[PORTC_OFFSET];
}

static void pc_1262_outf(void)
{
    cpu_state.portf = cpu_state.scratchpad.raw.mem[PORTF_OFFSET];
}

model_file_descriptor_t pt =
{
    .model_name = "pc-1251",
    .irom = { "./rom/cpu-1262.rom", 0},
    .erom = { "./rom/bas-1262.rom", 0x8000 },
    .ram_begin = RAM_BASE_ADDRESS,
    .ram_end = RAM_BASE_ADDRESS + RAM_LENGTH,
    .setup = pc12xx_setup,
    .read_memory = pc_1262_read_memory,
    .write_memory = pc_1262_write_memory,
    .ina = pc_1262_ina,
    .inb = pc_1262_inb,
    .outa = pc_1262_outa,
    .outb = pc_1262_outb,
    .outc = pc_1262_outc,
    .outf = pc_1262_outf,
    .keypress = pc_12xx_keypress,
    .keyrelease = pc_12xx_keyrelease,
};
