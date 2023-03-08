
print:
    pusha

.loop:
    mov al, [bx]
    cmp al, 0
    je .done
    mov ah, 0eh
    int 10h
    inc bx
    jmp .loop
.done:
    popa
    ret