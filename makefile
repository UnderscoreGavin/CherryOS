all:
	# g++ *.cc *.o
	# nasm *.asm -o *.o
	nasm -f bin boot.asm -o boot.bin
	qemu-system-x86_64 boot.bin