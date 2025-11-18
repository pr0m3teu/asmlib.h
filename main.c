#include <stdio.h>
#include "asmlib.h"

int main(void)
{
    dword num;
    char number[] = "1234";
    err_num err = AtoU((byte_ptr)&number, &num);

    char inumber[] = "-1234";
    int inum;
    err_num err2 = AtoI((byte_ptr)&inumber, &inum);
    
    printf("%d\n", err);
    printf("%u\n", num);
    
    printf("%d\n", err2);
    printf("%d\n", inum);


    exit_call(0);
    return 0;
}

