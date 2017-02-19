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
#include <sc61860_emu.h>

struct __breakpoint_event breakpoint_list[BREAKPOINT_LIST_LENGTH];

int set_breakpoint(uint16_t address, uint16_t attributes)
{
    // Search a breakpoint entry in the list that is not active.
    int i;
    for (i = 0; i < BREAKPOINT_LIST_LENGTH; i++)
        if ((breakpoint_list[i].attribute & BREAKPOINT_ATTRIB_VALID) == 0)
            break;
    if (i == BREAKPOINT_LIST_LENGTH)
        return -1;
    breakpoint_list[i].pc = address;
    breakpoint_list[i].attribute = BREAKPOINT_ATTRIB_VALID | attributes;
    return 0;
}

int clear_breakpoint(uint16_t address)
{
    // Search a breakpoint entry in the list that is not active.
    int i;
    for (i = 0; i < BREAKPOINT_LIST_LENGTH; i++)
        if (((breakpoint_list[i].attribute & BREAKPOINT_ATTRIB_VALID) != 0) &&
            (breakpoint_list[i].pc == address))
            break;
    if (i == BREAKPOINT_LIST_LENGTH)
        return -1;
    breakpoint_list[i].attribute = 0;
    return 0;
}

int check_breakpoint(uint16_t address)
{
    // Search a breakpoint entry in the list that is not active.
    int i;
    for (i = 0; i < BREAKPOINT_LIST_LENGTH; i++)
        if ((breakpoint_list[i].attribute &
                                    BREAKPOINT_ATTRIB_VALID_MASK) != 0)
        {
            // We have a valid event. Let's see if we have an address match.
            if (breakpoint_list[i].pc == address)
                return i;
        }
    return -1;
}
