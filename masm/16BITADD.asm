;Program to 2 16 bit numbers
assume cs:code,ds:data
data segment
    opr1 dw 3025h
    opr2 dw 8888h
    sum dw 0000h
    carry db 00h
data ends
code segment
    org 0100h
start:  mov ax,data
        mov ds,ax
        mov ch,00h
        mov ax,opr1
        mov bx,opr2
        add ax,bx
        jnc here
	    inc ch
here:   mov sum,ax
	    mov carry,ch
        mov ah,4ch
        int 21h
        code ends
end start



