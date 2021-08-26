;Program to perform BCD subtraction
assume cs:code,ds:data
data segment
    bcd1 db 38h
    bcd2 db 61h
    bcds db 00h
    sign db 00h
data ends
code segment
        org 0100h
start:  mov ax,data
        mov ds,ax
        mov al,bcd1
        mov bl,bcd2
        sub al,bl
        das
        je brch1
        mov sign,01h
        mov bl,99h
        sub bl,al
        mov al,bl
        add al,01h
        daa
brch1:  mov bcds,al
        mov ah,4ch
        int 21h
    code ends
end start