all:
	g++ *.cc *.o
	nasm *.asm -o *.o
