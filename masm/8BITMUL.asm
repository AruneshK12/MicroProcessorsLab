;Program for multiplying 2, 8 bit numbers
assume cs:code,ds:data
data segment
    opr1 db 10h
    opr2 db 05h
    product db 00h
data ends
code segment
    org 0100h
start:  mov ax,data
        mov ds,ax
        mov al,opr1
        mov bl,opr2
        mul bl
        mov product,al
        mov ah,4ch
        int 21h
    code ends
end start