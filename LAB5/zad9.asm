org 100h

mov ax, [a]
add ax, [b]
mov bl, [c]
div bl
mov cx, [a]
mul cx



mov AX, 4C00h
int 21h

a dw 0x04
b dw 0x03
c dw 0x02
y dw 0x0