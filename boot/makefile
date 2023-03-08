all:
	# g++ *.cc *.o
	# nasm *.asm -o *.o
	nasm -f bin print.s -o print.o
	nasm -f bin boot.s -o boot.o
	nasm -f bin data.s -o data.o
	cat boot.o print.o data.o > boot.bin
	qemu-system-i386 boot.bin
clean:
	rm -r *.o *.bin