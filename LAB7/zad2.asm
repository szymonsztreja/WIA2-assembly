org 100h;
; 2(a+b-c) ONP: 2 a b + c - * 

push word 2h
push word [a]
push word [b]
pop word ax
pop word bx
add ax, bx
push word ax
push word [c]
pop word bx
pop word ax
sub ax, bx
pop word bx
mul bx


mov AX, 4c00h
int 21h	;end prog

a dw 0x0005
b dw 0x0004
c dw 0x0002