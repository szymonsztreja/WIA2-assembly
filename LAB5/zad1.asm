; a + b + c
org 100h

mov ax, [a]		; AX = 5h
mov cx, [b]		; CX = 3Bh
add ax, cx		; AX = AX + CX = 40h
mov cx, [c]		; CX = 4Ch
add ax, cx		; AX = AX + CX = 40h + 4Ch = 8Ch
mov [y], ax

mov AX, 4C00h
int 21h

a dw 0x05
b dw 0x3B
c dw 0x4C
y dw 0x0