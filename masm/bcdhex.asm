;Program to convert BCD to Hexadecimal
assume cs:code,ds:data
data segment
    bcd1 db 12h
    hex1 db 00h
    fplace db 00h
    splace db 00h
data ends
code segment
        org 0100h
start:  mov ax,data
        mov ds,ax
        ;to get 1st digit
        mov cl,04
        mov al,bcd1
        shr al,cl
        mov fplace,al
        ;to get 2nd digit
        mov bl,0fh
        mov al,bcd1
        and al,bl
        mov splace,al
        ;to multiply 1st digit with 0a
        mov al,fplace
        mov bh,0ah
        mul bh
        mov hex1,al
        ;add the digits
        mov al,hex1
        mov bl,splace
        add al,bl
        mov hex1,al
        ;code ends
        mov ah,4ch
        int 21h
    code ends
end start
