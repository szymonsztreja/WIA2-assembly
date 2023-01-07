org 100h

mov ah, 0Ah
mov dx, string
int 21h

mov bp, string		; wrzuca do bp poczatek adresu stringa
mov al, [string+1]	;wrzuc do al ilosc znakow stringa
mov ah, 00h			
add bp, ax			; dodaje do poczatku adresu dlugosc stringa 
mov byte [bp+2], "$"	;wrzuca na koniec stringa $


mov ah, 02h			; postaw kursor na:
mov dh, 5h			; wiersz 5
mov dl, 5h			; kolumna 5
int 10h

mov ah, 09h
mov dx, string+2
int 21h


mov ax, 0x4C00
int 0x21

string db 16h