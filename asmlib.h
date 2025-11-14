#ifndef ASMLIB_H_
#define ASMLIB_H_

typedef unsigned char  db;
typedef unsigned short dw;
typedef unsigned int   dd;
typedef unsigned long  dq;

typedef const char* byte_ptr;

extern void putchar_asm(byte_ptr ch);
extern void exit_call(dd exit_code);

#endif // ASMLIB_H_
