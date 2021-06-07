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

#include <stdint.h>
#include <sc61860_emu.h>

struct __breakpoint_event breakpoint_list[BREAKPOINT_LIST_LENGTH];

int set_breakpoint(uint16_t data, uint16_t attributes)
{
    // Search a breakpoint entry in the list that is not active.
    int i;
    for (i = 0; i < BREAKPOINT_LIST_LENGTH; i++)
        if ((breakpoint_list[i].attribute & BREAKPOINT_ATTRIB_VALID) == 0)
            break;
    if (i == BREAKPOINT_LIST_LENGTH)
        return -1;
    breakpoint_list[i].data = data;
    breakpoint_list[i].attribute = BREAKPOINT_ATTRIB_VALID | attributes;
    return 0;
}

int clear_breakpoint(uint16_t data)
{
    // Search a breakpoint entry in the list that is not active.
    int i;
    for (i = 0; i < BREAKPOINT_LIST_LENGTH; i++)
        if (((breakpoint_list[i].attribute & BREAKPOINT_ATTRIB_VALID) != 0) &&
            (breakpoint_list[i].data == data))
            break;
    if (i == BREAKPOINT_LIST_LENGTH)
        return -1;
    breakpoint_list[i].attribute = 0;
    return 0;
}

int check_breakpoint(uint16_t data)
{
    uint8_t mem = pt.read_memory(data);
    int i;
    for (i = 0; i < BREAKPOINT_LIST_LENGTH; i++)
    {
        // First we are searching for an opcode breapoint.
        if ((breakpoint_list[i].attribute & (BREAKPOINT_ATTRIB_VALID_MASK |
                                             BREAKPOINT_ATTRIB_INSTRUCTION)) ==
                                         (BREAKPOINT_ATTRIB_VALID_MASK |
                                          BREAKPOINT_ATTRIB_INSTRUCTION))
        {
            // We have a valid event. Let's see if we have an address match.
            if (breakpoint_list[i].data == mem)
            {
                if ((breakpoint_list[i].attribute &
                          BREAKPOINT_ATTRIB_TEMPORARY) != 0)
                    breakpoint_list[i].attribute = 0;
                return i;
            }
        }

        // Now check for instruction pointer breakpoints.
        if ((breakpoint_list[i].attribute &
                                    BREAKPOINT_ATTRIB_VALID_MASK) != 0)
        {
            // We have a valid event. Let's see if we have an address match.
            if (breakpoint_list[i].data == data)
            {
                if ((breakpoint_list[i].attribute &
                          BREAKPOINT_ATTRIB_TEMPORARY) != 0)
                    breakpoint_list[i].attribute = 0;
                return i;
            }
        }
    }
    return -1;
}
