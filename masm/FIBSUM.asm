;Fibonacci series and sum
assume cs:code,ds:data
data segment
    org 0000H
    total db 0AH
    org 0010H
    fibArray db 0AH dup(?)
    org 0020H
    Sum db 00H
data ends
code segment
        org 0100h
start:  mov ax,data
        mov ds,ax
        mov ah,00h
        mov al,01h
        mov dh,sum
        mov si,offset fibArray
        mov [si],ah
        cmp total,01h
        JE only1
        inc si
        mov [si],al
        cmp total,02h
        JE only2
        inc si
        add dh,al;adding sum
        mov ch,00h
        mov cl,total
        sub cx,0002H
L1:     mov bl,ah;BL = AH
        add bl,al; BL = BL + AL
        mov ah,al; AH = AL
        mov al,bl; AL = BL
        add dh,al
        mov [si],al
        inc si
        Loop L1
        JMP end1
only1:  mov dh,ah
        JMP end1
only2:  mov dh,al
        mov ah,al
end1:   mov sum,dh
        mov ah,4ch
        int 21h
    code ends
end start