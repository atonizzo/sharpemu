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
#include <sc61860_emu.h>

int debug_break(int a)
{
    return 0;
}

void dump_memory(uint16_t from, uint16_t length)
{
    char buffer[128];
    uint32_t   i, j;

    // Round up the length to the next 16 bytes.
    length = (length + 15) & ~0x0F;

    strcpy(buffer,
           "\r\n          0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F");
    printf(buffer, strlen(buffer));
    strcpy(buffer,
           "\r\n          -----------------------------------------------");
    printf(buffer, strlen(buffer));
    for (i = 0; i < length; i += 16)
    {
        uint8_t ch;
        sprintf(buffer, "\r\n%04X: ", from + i);
        for (j = 0; j < 16; j++)
        {
            ch = memory_image[from + i + j];
            sprintf(buffer + strlen(buffer), "%02X ", ch);
        }
        strcat(buffer, " ");
        for (j = 0; j < 16; j++)
        {
            ch = memory_image[from + i + j];
            if ((ch >= ' ') && (ch <= '~'))
                sprintf(buffer + strlen(buffer), "%c", ch);
            else
                strcat(buffer, ".");
        }
        printf(buffer, strlen(buffer));
    }
    printf("\r\n");
}
