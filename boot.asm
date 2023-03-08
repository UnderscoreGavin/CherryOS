[org 0x7c00]
mov ah, 0x0e
mov bp, 0x8000 ; base pointer
mov sp, bp ; stack pointer
push 'T'
push 'S'
push 'E'
push 'T'

run:
    pop bx
    mov al, bl
    cmp al, 0
    je done
    int 10h
    jmp run
done:
jmp $
cli
hlt 
times 510 - ($-$$) db 0
dw 0xaa55 
