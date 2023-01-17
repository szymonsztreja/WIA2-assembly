org 100h; 

mov ah, 0xFF
mov bl, 22h

sub ah,bl


mov AX, 4c00h	;
int 21h	;end prog