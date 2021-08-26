;32 Bit Subtraction
assume cs:code,ds:data
data segment
    opr1 dd 22225555H
    opr2 dd 11114444H
    ans1 dd 00000000H
    carry dw 00h
data ends
code segment
        org 0100h
start:  mov ax,data
        mov ds,ax
        mov ch,00h
        mov ax,word ptr opr1
        mov bx,word ptr opr2
        sub ax,bx
        jnc here1
        inc ch
here1:  mov cx,word ptr opr1+2
        mov dx,word ptr opr2+2
        mov cl,00h
        sbb bx,dx
        jnc here2
        inc bl
        neg ax
        mov dx,0FFFFH
        sub dx,cx
        mov cx,dx
here2:  mov word ptr ans1,ax
        mov word ptr ans1+2,cx
        mov ah,4ch
        int 21h
    code ends
end start