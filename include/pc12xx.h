// Copyright (c) 2016-2021, atonizzo@gmail.com
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

#ifndef __PC12XX_H__
#define __PC12XX_H__

// We are going to name these indexes from IA1 through IA7 and from IB1 to IB3
//  to be consistent to the naming convention in the manual
#define KEYBOARD_PORT_INDEX_A1         0
#define KEYBOARD_PORT_INDEX_A2         1
#define KEYBOARD_PORT_INDEX_A3         2
#define KEYBOARD_PORT_INDEX_A4         3
#define KEYBOARD_PORT_INDEX_A5         4
#define KEYBOARD_PORT_INDEX_A6         5
#define KEYBOARD_PORT_INDEX_A7         6
#define KEYBOARD_PORT_INDEX_B1         7
#define KEYBOARD_PORT_INDEX_B2         8
#define KEYBOARD_PORT_INDEX_B3         9
#define KEYBOARD_PORT_BIT_A1           (1 << 0)
#define KEYBOARD_PORT_BIT_A2           (1 << 1)
#define KEYBOARD_PORT_BIT_A3           (1 << 2)
#define KEYBOARD_PORT_BIT_A4           (1 << 3)
#define KEYBOARD_PORT_BIT_A5           (1 << 4)
#define KEYBOARD_PORT_BIT_A6           (1 << 5)
#define KEYBOARD_PORT_BIT_A7           (1 << 6)
#define KEYBOARD_PORT_BIT_A8           (1 << 7)

struct
{
    uint16_t  id;
    uint8_t   kbd;
    uint8_t   count;
} keyboard_count;

#endif
