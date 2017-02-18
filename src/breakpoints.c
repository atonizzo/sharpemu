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
