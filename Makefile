CFLAAGS=-Wall -Wextra

main: main.o asm.o
	gcc -o main $(CFLAGS) main.o asm.o

asm.o: main.asm
	nasm -f elf64 -o asm.o main.asm

main.o: main.c
	gcc -c $(CFLAGS) main.c

.PHONY: clean
clean:
	rm -rf main
	rm -rf *.o

