org 100h

mov ah, 0Ah			; ustaw ah na pobieranie stringa od użytkownika
mov dx, string		; do dx wrzuć pustego stringa, którym później wydrukujemy znak z inputu
int 21h				; wywołanie przerwania

mov ah, 0Eh			
mov al, 0Ah
int 10h
mov al, 0Dh
int 10h

mov ah, 0Eh
mov al, [string+3]
int 10h

mov ax, 0x4C00
int 0x21

string db 16h	;empty string