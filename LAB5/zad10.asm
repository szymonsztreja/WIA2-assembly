org 100h

mov ax, [a]
mov bl, 2h
div bl
mov cx, ax

mov ax, [b]
mov bl, 3h
div bl
add cx, ax

mov ax, [c]
mov bl, 4h
div bl
add ax, cx

mov AX, 4C00h
int 21h

a dw 0x04
b dw 0x03
c dw 0x02
y dw 0x0