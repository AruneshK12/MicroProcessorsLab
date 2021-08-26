;Program for subtracting 2, 8 bit numbers
assume cs:code,ds:data
data segment
    opr1 db 55h
    opr2 db 66h
    diff db 00H
    borrow db 00H
data ends
code segment
        org 0100H
start:  mov ax,data
        mov ds,ax
        mov ah,opr1
        mov bh,opr2
        mov ch,00H
        sub ah,bh
        jnc here
        mov ch,01H
        neg ah
here:   mov diff,ah
        mov borrow,ch
        mov ah,4ch
        int 21h
    code ends
end start
