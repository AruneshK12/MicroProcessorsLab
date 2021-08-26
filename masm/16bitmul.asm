;Program to find product of 2 16 bit numbers
assume cs:code,ds:data
data segment
    opr1 dw 1500h
    opr2 dw 0002h
    prod1 dw 00h
    prod2 dw 00h
data ends
code segment
    org 0100h
start:  mov ax,data
        mov ds,ax
        mov ax,opr1
        mov bx,opr2
        mul bx
        mov prod1,ax
        mov prod2,dx
        mov ah,4ch
        int 21h
    code ends
end start


