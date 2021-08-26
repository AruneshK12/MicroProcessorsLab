;Program to compare 2 strings
assume cs:code,ds:data,es:extra
data segment
    count dw 0004h
    str1 db 01h,02h,03h,04h
    status dw 0000h
data ends
extra segment
    str2 db 01h,02h,03h,05h
extra ends
code segment
        org 0100h
start:  mov ax,data
        mov ds,ax
        mov ax,extra
        mov es,ax
        mov cx,count
        inc cx
        mov bx,count
        inc bx
        mov si,offset str1
        mov di,offset str2
        cld
        repe cmpsb
        cmp cx,00
        je here
        sub bx,cx
        mov cx,bx
here:   mov status,cx
        mov ah,4ch
        int 21h
    code ends
end start