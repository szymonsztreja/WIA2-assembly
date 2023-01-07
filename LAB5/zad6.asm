org 100h

mov ax, [b]
mov bl, [c]
div bl
add ax, [a]



mov AX, 4C00h
int 21h

a dw 0x04
b dw 0x03
c dw 0x02
y dw 0x0