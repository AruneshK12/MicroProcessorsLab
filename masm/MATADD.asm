;program to add 2 MATRIX
assume cs:code,ds:data
data segment
    r1 db 02h
    c1 db 02h
    mat1 db 02h,03h,04h,05h
    r2 db 02h
    c2 db 02h
    mat2 db 04h,05h,02h,04h
    mat3 db 00h,00h,00h,00h
data ends
code segment
        org 0100h
start:  mov ax,data
        mov ds,ax
        ;to check rows
        mov ah,r1
        mov bh,r2
        cmp ah,bh
        jnz term
        ;to check columns
        mov ah,c1
        mov bh,c2
        cmp ah,bh
        jnz term
        ;to loop and add the matrix
        mov al,r1
        mov bl,c1
        mul bl
        mov cx,ax
        mov si,offset mat1
        mov di,offset mat2
        mov bx,offset mat3
add1:   mov ah,[si]
        inc si
        mov al,[di]
        inc di
        add al,ah
        mov [bx],al
        inc bx
        loop add1
term:   mov ah,4ch
        int 21h
    code ends
end start


