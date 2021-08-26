assume cs:code,ds:data
data segment
    num db 06h
    fact_h dw 0000h
    fact_l dw 0000h
data ends
code segment
        org 0100h
start:  mov ax,data
        mov ds,ax
        mov cl,num
        mov ch,00h
        mov ax,0001h
        mov dx,0000h
L1:     mul cx
        LOOP L1
        mov fact_l,ax
        mov fact_h,dx
        mov ah,4ch
        int 21h
    code ends
end start

