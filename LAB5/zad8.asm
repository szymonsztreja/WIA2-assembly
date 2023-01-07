org 100h


mov ax, [a]
mul word [c]
mov cx, ax
mov ax, [c]
mul word [c]
mov bx, ax
mov ax, [b]
mul bx
add ax, cx

mov AX, 4C00h
int 21h

a dw 0x04
b dw 0x03
c dw 0x02
y dw 0x0