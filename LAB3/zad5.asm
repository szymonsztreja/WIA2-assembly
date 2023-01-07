org 100h

mov ah, 00h		
mov al, 11h		; 640x480 b/w graphics
int 0x10

mov ah, 00h
int 16h

mov ah, 1
int 21h

mov ax, 0x4C00
int 0x21