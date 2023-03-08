all:
	# g++ *.cc *.o
	# nasm *.asm -o *.o
	nasm -f bin print.s -o print.o
	nasm -f bin boot.s -o boot.o
	cat boot.o print.o > boot.bin
	qemu-system-i386 boot.bin