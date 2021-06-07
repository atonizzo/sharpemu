// Copyright (c) 2016-2021, atonizzo@gmail.com
// All rights reserved.
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software
// Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
// 02110-1301, USA.

#include <stdio.h>
#include <stdint.h>
#include <sc61860_emu.h>

static int32_t hex_to_int(char ch)
{
    if ((ch >= 'a') && (ch <= 'f'))
        return (ch - 'a' + 10);
    if ((ch >= '0') && (ch <= '9'))
        return (ch - '0');
    if ((ch >= 'A') && (ch <= 'F'))
        return (ch - 'A' + 10);
    return -1;
}

static inline int32_t read_char(FILE *fp)
{
    return fgetc(fp);
}

static int32_t read_byte(FILE *fp)
{
    // Calculate the record length. This will require reading 2 bytes.
    int32_t ch = read_char(fp);
    if (ch < 0)
        return -1;
    uint8_t data_byte = hex_to_int(ch) << 4;
    ch = read_char(fp);
    if (ch < 0)
        return -1;
    return data_byte + hex_to_int(ch);
}

static int32_t compare_crc(FILE *fp, uint8_t crc_calculated)
{
    // Calculate the CRC. This will require reading 2 bytes.
    int32_t crc_read = read_byte(fp);
    if (crc_read < 0)
        return -1;

    // Calculate the 2s complement of the calculated CRC.
    crc_calculated = ~crc_calculated;
    crc_calculated += 1;

    if (crc_read != crc_calculated)
        return -1;

    int32_t ch;
    do
    {
        ch = read_char(fp);
        if (ch < 0)
            return -1;
    }
    while ((ch == '\r') || (ch == '\n'));

    if (ch != ':')
        return -1;
    return 0;
}

int32_t parse_hex(FILE *fp)
{
    int pc_set = -1;
    int32_t error_code, i;
    int32_t ch = read_char(fp);
    if (ch < 0)
        return -1;
    if (ch != ':')
        return -1;

    while (1)
    {
        // Calculate the record length. This will require reading 2 bytes.
        int32_t record_length = read_byte(fp);
        if (record_length < 0)
            return -1;
        uint8_t crc_calculated = record_length;

        // Calculate the address. This will require reading 4 bytes.
        ch = read_byte(fp);
        if (ch < 0)
            return -1;
        crc_calculated += ch;
        uint16_t address = ch << 8;
        ch = read_byte(fp);
        if (ch < 0)
            return -1;
        crc_calculated += ch;
        address += ch;

        // Calculate the frame type. This will require reading 2 bytes.
        int32_t frame_type = read_byte(fp);
        if (frame_type < 0)
            return -1;
        crc_calculated += frame_type;

        switch (frame_type)
        {
        case 0:
            for (i = 0; i < record_length; i++)
            {
                int32_t data = read_byte(fp);
                if (data < 0)
                    return -1;
                crc_calculated += data;
                pt.write_memory(address + i, data);
            }

            error_code = compare_crc(fp, crc_calculated);
            if (error_code < 0)
                return -1;
            if (pc_set == -1)
            {
                cpu_state.pc = address;
                pc_set = 1;
            }
            break;
        case 1:
            // Let's see if this is the last record.
            if ((record_length == 0) && (address == 0))
                return 0;
            break;
        default:
            printf("Unhandled HEX file token: %d.\r\n", frame_type);
            return -1;
        }
    }
    return 0;
}
