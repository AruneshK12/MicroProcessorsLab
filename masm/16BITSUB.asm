;Program to 2 16 bit numbers
assume cs:code,ds:data
data segment
    opr1 dw 6666h
    opr2 dw 5555h
    diff dw 0000h
    borrow db 00h
data ends
code segment
    org 0100h
start:  mov ax,data
        mov ds,ax
        mov ch,00h
        mov ax,opr1
        mov bx,opr2
        sub ax,bx
        jnc here
	    inc ch
        neg ax
here:   mov diff,ax
	    mov borrow,ch
        mov ah,4ch
        int 21h
        code ends
end start
        