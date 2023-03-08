[org 0x7c00]

mov ah, 0x0e 

mov bp, 0x8000 
mov sp, bp 

mov al, 's'
int 10h
call print_nl
mov bx, HELLO
call print

call 1000h

cli
hlt
jmp $

%include "print.s"
%include "data.s"


times 510-($-$$) db 0
dw 0xaa55
