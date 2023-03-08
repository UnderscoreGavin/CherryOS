all:
	# g++ *.cc *.o
	# nasm *.asm -o *.o
	nasm -f bin print.s -o print.o
	nasm -f bin boot.s -o boot.o
	nasm -f bin data.s -o data.o
	cat boot.o print.o data.o > boot.bin
	nasm test.s -f elf -o test.o
	ld -melf_i386 -o test.bin -Ttext 0x1000 test.o --oformat binary
	cat boot.bin test.bin > img.bin
	qemu-system-i386 img.bin
clean:
	rm -r *.o *.bin