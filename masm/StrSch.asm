;Program search a byte in a string
assume cs:code,ds:data,es:extra
data segment
    search_bt db 02h
    found_pos dw 0000h
data ends
extra segment
    str_size dw 0004h
    str1 db 01h,02h,04h,05h
extra ends
code segment
        org 0100h
start:  mov ax,data
        mov ds,ax
        mov ax,extra
        mov es,ax
        mov cx,str_size
        mov di,offset str1
        mov al,search_bt
        cld
        repne scasb
        cmp cx,00
        je here
        mov ax,str_size
        sub ax,cx
        mov cx,ax
here:   mov found_pos,cx
        mov ah,4ch
        int 21h
    code ends
end start