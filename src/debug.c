#include <stdint.h>
#include <string.h>
#include <sc61860_emu.h>

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
