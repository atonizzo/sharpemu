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
#include <stdio.h>
#include <sc61860_emu.h>

int load_personality(char *model)
{
    FILE *fp_rom;
    int i;
    for (i = 0;
         i < sizeof(pt) / sizeof(model_file_descriptor_t);
         i++)
    {
        if (strcasecmp(pt[i].model_name, model) == 0)
        {
            // We need to load the internal ROM (internal to the sc61860) and
            //  the external one, which usually sits on an external ROM chip.
            fp_rom = fopen(pt[i].irom.file_name, "rb");
            if (fp_rom == NULL)
            {
                printf("Cannot open %s file.\r\n", pt[i].irom.file_name);
                return -1;
            }

            // Find the size of the file.
            fseek(fp_rom, 0L, SEEK_END);
            uint32_t file_size = ftell(fp_rom);
            rewind(fp_rom);
            uint16_t mem_address = pt[i].irom.base_address;

            do
            {
                memory_image[mem_address] = fgetc(fp_rom);
                mem_address += 1;
            }
            while (mem_address < pt[i].irom.base_address + file_size);
            fclose(fp_rom);

            // This is the external ROM, contoaning the BASIC interpreter.
            fp_rom = fopen(pt[i].erom.file_name, "rb");
            if (fp_rom == NULL)
            {
                printf("Cannot open %s file.\r\n", pt[i].erom.file_name);
                return -1;
            }

            // Find the size of the file.
            fseek(fp_rom, 0L, SEEK_END);
            file_size = ftell(fp_rom);
            rewind(fp_rom);
            mem_address = pt[i].erom.base_address;

            do
            {
                memory_image[mem_address] = fgetc(fp_rom);
                mem_address += 1;
            }
            while (mem_address < pt[i].erom.base_address + file_size);
            fclose(fp_rom);
            return i;
        }
    }
    return -1;
}
