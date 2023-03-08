[org 0x7c00]

mov ah, 0x0e 

mov bp, 0x8000 
mov sp, bp 

mov al, 's'
int 10h
mov bx, HELLO
call print


cli
hlt
jmp $

%include "print.s"

HELLO:
    db 'Hello, World', 0

GOODBYE:
    db 'Goodbye', 0

times 510-($-$$) db 0
dw 0xaa55
