#include <stdio.h>
#include "asmlib.h"

int main(void)
{
    dword num;
    char number[] = "1234";
    err_num err = AtoU((byte_ptr)&number, &num);
    
    printf("%d\n", err);
    printf("%u\n", num);

    exit_call(0);
    return 0;
}

