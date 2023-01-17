org 100h;

mov ax, 0x1AD0
mov bx, 0x0020

mul bl


mov AX, 4c00h	;
int 21h	;end prog