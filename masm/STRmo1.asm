assume cs:code,ds:data,es:extra
data segment
    count dw 0004h
    str1 db 12h,11h,20h,00h
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
        mov cx,count
        mov si,offset str1
        mov di,offset str2
        cld
        rep movsb
        mov ah,4ch
        int 21h
    code ends
end start