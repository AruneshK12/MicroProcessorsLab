;Program to divide 2 16 bit number
assume cs:code,ds:data
data segment
    opr1 dw 1500h
    opr2 dw 0002h
    quotient dw 00h
    remainder dw 00h
data ends
code segment
    org 0100h
start:  mov ax,data
        mov ds,ax
        mov dx,000h
        mov ax,opr1
        mov bx,opr2
        div bx
        mov quotient,ax
        mov remainder,dx
        mov ah,4ch
        int 21h
    code ends
end start