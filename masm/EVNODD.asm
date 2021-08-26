;EVEN ODD in an array
assume ds:data,cs:code
data segment
    numb_cnt db 04h
    numb_list db 02h,03h,04h,05h
    odd_no db 00h
    even_no db 00h
data ends
code segment
        org 0100h
start:  mov ax,data
        mov ds,ax
        mov ch,00h
        mov cl,numb_cnt
        mov dh,00h
        mov dl,00h
        mov si,offset numb_list
L1:     mov bl,02h
        mov ah,00h
        mov al,[si]
        inc si
        div bl
        cmp ah,00h
        JE L2
        inc dh
        JMP L4
L2:     inc dl
L4:     mov even_no,dl
        mov odd_no,dh
        LOOP L1
        mov ah,4ch
        int 21h
    code ends
end start







