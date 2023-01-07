org 100h

mov ah, 08h			; ustaw ah na pobieranie chara od użytkownika, pobrany char jest w AL
int 21h				; wywołanie przerwania

mov ah, 5Fh			; znak "_"
cmp al, ah

JE equal
JG greater
JB lesser

equal:
mov ah, 0Eh
mov al, '=='
int 21h
jmp koniec

greater:
mov ah, 02h
mov dl, '>'
int 21h
jmp koniec

lesser:
mov ah, 02h
mov dl, '<'
int 21h
jmp koniec

koniec:
mov AX, 4C00h
int 21h

