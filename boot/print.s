
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

print_nl:
    pusha
    mov ah, 0eh
    mov al, 10
    int 10h
    mov al, 13
    int 10h
    popa
    ret