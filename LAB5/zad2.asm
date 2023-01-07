org 100h

mov ax, [a]
mov cx, [b]
mul cx
mov cx, [c]
add ax, cx

mov AX, 4C00h
int 21h

a dw 0x05
b dw 0x3B
c dw 0x4C
y dw 0x0