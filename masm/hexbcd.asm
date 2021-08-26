;Program to convert hex to bcd
assume cs:code,ds:data
data segment
    hex1 db 0ffh
    bcd2 db 00h
    bcd1 db 00h
    bcdt db 00h
data ends
code segment
        org 0100h
start:  mov ax,data
        mov ds,ax
        ;to get bcd2
        mov ah,00h
        mov al,hex1 
        mov bl,64h
        div bl
        mov bcd2,al
        mov bcdt,ah
        ;to get bcd1 and 0
        mov ah,00h
        mov al,bcdt
        mov bl,0Ah
        div bl
        mov bcd1,al
        mov bcdt,ah
        ;to combine bcd0 and 1 to one byte
        mov al,bcd1
        mov cl,04
        shl al,cl
        mov bl,bcdt
        add al,bl
        mov bcd1,al
        ;code ends
        mov ah,4ch
        int 21h
    code ends
end start

