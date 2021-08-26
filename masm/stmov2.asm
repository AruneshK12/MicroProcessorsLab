;Program to copy 2 strings without string manipulations
assume cs:code,ds:data,es:extra
data segment
    count dw 0004h
    str1 db 11h,12h,13h,14h
data ends
extra segment
    str2 db 00h,00h,00h,00h
extra ends
code segment
        org 0100h
start:  mov ax,data
        mov ds,ax
        mov ax,extra
        mov es,ax
        mov si,offset str1
        mov di,offset str2
        mov cx,count
next:   mov bx,count
        sub bx,cx
        mov al,str1[bx]
        mov es:[di],al
        inc di
        loop next
        mov ah,4ch
        int 21h
    code ends
end start