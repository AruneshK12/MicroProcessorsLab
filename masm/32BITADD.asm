;32 Bit Addition
assume cs:code,ds:data
data segment
    opr1 dd 11115555H
    opr2 dd 22224444H
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
        add ax,bx
        jnc here1
        inc ch
here1:  mov bx,word ptr opr1+2
        mov dx,word ptr opr2+2
        adc bx,dx
        jnc here2
        inc bl
here2:  mov word ptr ans1,ax
        mov word ptr ans1+2,bx
        mov ah,4ch
        int 21h
    code ends
end start