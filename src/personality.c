#include <stdint.h>
#include <stdio.h>
#include <sc61860_emu.h>

model_file_descriptor_t pt[] =
{
    { .model_name = "pc-1251",
      .irom = { "./rom/cpu-1251.rom", 0},
      .erom = { "./rom/bas-1251.rom", 0x4000 },
      .setup = pc_1251_setup,
      .read_memory = pc_1251_read_memory,
      .write_memory = pc_1251_write_memory,
      .ina = pc_1251_ina,
      .inb = pc_1251_inb,
      .outa = pc_1251_outa,
      .outb = pc_1251_outb,
      .outc = pc_1251_outc,
      .outf = pc_1251_outf,
      .keypress = pc_1251_keypress,
      .keyrelease = pc_1251_keyrelease,
    },
};

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
