org 100h

mov ax, [a]
mov cx, [b]
add ax, cx
mov cx, [c]
sub ax, cx
mov cx, 02h
mul cx

mov AX, 4C00h
int 21h

a dw 0x04
b dw 0x03
c dw 0x02
y dw 0x0		