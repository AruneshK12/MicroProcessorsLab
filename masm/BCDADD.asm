;Program to perform BCD addition
assume cs:code,ds:data
data segment
    bcd1 db 70h 
    bcd2 db 70h
    bcda db 00h
    cb_b db 00h
data ends
code segment
        org 0100h
start:  mov ax,data
        mov ds,ax
        mov al,bcd1
        mov bl,bcd2
        add al,bl
        daa
        jnc tem
        mov cb_b,01h
tem:    mov bcda,al
        mov ah,4ch
        int 21h
    code ends
end start