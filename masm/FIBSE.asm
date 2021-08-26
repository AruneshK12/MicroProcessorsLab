;Fibonacci series sum printing included
assume ds:data, cs:code
data segment
    total db 10h
    sum1 db 00h
data ends
code segment
        org 0100h
start:  mov ax,data
        mov ds,ax
        mov ah,00h
        mov al,01h
        mov ch,00h
        mov cl,total
        cmp cx,0001h
        JE only1
        cmp cx,0002h
        JE only2
        sub cl,02h
L1:     mov bl,ah;BL = AH
        add bl,al; BL = BL + AL
        mov ah,al; AH = AL
        mov al,bl; AL = BL
        Loop L1
        mov sum1,al
        JMP end1
only1:  mov sum1,ah
        JMP end2
only2:  mov sum1,al
        JMP end2
end1:   mov cx,00;making counter 0
        mov dx,00;making dx to be 0 for divison
        mov ah,00; setting the ax value
        mov al,sum1;setting the ax value as 8 bit
L2:     cmp ax,00;if ax 0 all the digits have been processed
        je print1;after processing them in the stack send to print
        mov bx,10
        div bx;divide the ax by 10
        push dx;push the remainder to the stack
        inc cx;increment cx to continue the L2 counter
        xor dx,dx;making dx to be 0
        JMP L2;loop untill ax becomes 0
print1: cmp cx,0;check if cx = 0
        JE end2
        pop dx;pop the top number dx
        add dx,48;add 48 to make the given digit as ascii and print
        mov ah,02h; call 02h to print character
        int 21h
        dec cx;decrement counter
        jmp print1;print till cx==0
end2:   mov ah,4ch
        int 21h
    code ends
end start