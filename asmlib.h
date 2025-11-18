#ifndef ASMLIB_H_
#define ASMLIB_H_

typedef unsigned char  byte;
typedef unsigned short word;
typedef unsigned int   dword;
typedef unsigned long  qword;

typedef dword err_num;
typedef const char* byte_ptr;

extern void putchar_asm(byte_ptr ch);
extern void exit_call(dword exit_code);

extern err_num AtoU(byte_ptr cstr, dword *num);

extern err_num AtoI(byte_ptr cstr, int *num);

#endif // ASMLIB_H_
