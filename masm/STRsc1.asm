assume cs:code,ds:data,es:extra
data segment
    sear_bt db 11h
    fnd_pos dw 0000h
data ends
extra segment
    size1 dw 0004h
    str1 db 12h,11h,20h,00h
extra ends
code segment
        org 0100h
start:  mov ax,data
        mov ds,ax
        mov ax,extra
        mov es,ax
        mov cx,size1
        mov di,offset str1
        mov al,sear_bt
        cld
        repe scasb
        cmp cx,0000h
        je here
        mov ax,size1
        sub ax,cx
        mov cx,ax
here:   mov fnd_pos,cx
        mov ah,4ch
        int 21h
    code ends
end start