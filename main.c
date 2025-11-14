#include <stdio.h>
#include "asmlib.h"

int main(void)
{
    putchar_asm("A");
    putchar_asm("\n");

    exit_call(0);
    return 0;
}

