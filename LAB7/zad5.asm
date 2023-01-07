org 100h;
; a * (b / c) ONP a b c / *

push word [a]
push word [b]
push word [c]
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