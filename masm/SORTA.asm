;program to sort an array(asscending)
assume cs:code,ds:data
data segment
    ar1 db 01h,04h,06h,02h
    count dw 0004h
    cntmp dw 0000h
data ends
code segment
        org 0100h
start:  mov ax,data
        mov ds,ax
        mov ax,count
        dec ax
        mov cntmp,ax
        mov dx,cntmp
outerl: mov cx,cntmp
        mov si,offset ar1
innerl: mov al,[si]
        cmp al,[si+1]
        jl cont
        xchg al,[si+1]
        mov [si],al
cont:   inc si
        loop innerl
        dec dx
        jnz outerl
        mov ah,4ch
        int 21h
    code ends
end start

