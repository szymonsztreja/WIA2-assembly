org 100h;
; a^2 + 2 * b + c ONP a a * 2 b * + c +

push word [a] 
push word [a]
pop word bx
pop word ax
mul bx
push word ax 

push word [b]
pop word ax
mov cx, 02h
mul cx
push word ax

push word [c]
pop word bx
pop word ax
add ax, bx

pop word bx
add ax, bx


mov AX, 4c00h
int 21h	;end prog

a dw 0x0005
b dw 0x0004
c dw 0x0002