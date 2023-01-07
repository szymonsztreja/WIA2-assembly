org 100h;
; a * b + c ONP a b * c +

push word [a]
push word [b]
pop word ax
pop word bx
mul bx
push word ax
push word [c]
pop word ax
pop word bx
add ax, bx




mov AX, 4c00h
int 21h	;end prog

a dw 0x0005
b dw 0x0004
c dw 0x0002