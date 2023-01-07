org 100h

mov bp, string			; do base pointera wrzuć adres początku stringa
mov byte [bp+3], '$'	; na 4 miejsce wrzuć znak dolara

mov ah, 09h				; ustaw ah na drukowanie dx do zanku dolara $
mov dx, bp				; wrzuć do dx adres bp
int 21h					; wywołaj przerwanie

mov ax, 0x4C00
int 0x21

string db "hyle czola"