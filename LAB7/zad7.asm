org 100h;
; 2*a * b / 2*c  ONP 2 a * b 2 c * / *

push word [a]
push word 2h
pop word bx
pop word ax
mul bx
push word ax

push word [b]
push word [c]
push word 2h
pop word bx
pop word ax
mul bx
push word ax

pop word bx
pop word ax
div bl
mov ah, 00h
push word ax

pop word bx
pop word ax
mul bx


mov AX, 4c00h
int 21h	;end prog

a dw 0x0005
b dw 0x0004
c dw 0x0002