org 100h


charInput:
mov ah, 08h			; ustaw ah na pobieranie chara	
int 21h				; wywołanie przerwania w al pojawi sie kod ASCII chara z klawiatury
mov ah, 51h			; znak Q w ascii 
mov bl, al			; ax zmienia sie podczas porównań xd, tak jest bezpieczniej
cmp bl, ah

JE koniec			; jeśli rónwe to oba są Q
JG printLetter
JB printLetter

printLetter:
mov ah, 02h			; ah ustawione na drukowanie chara
mov dl, bl			; drukuj chara który jest w bl
int 21h	
jmp printNewLine			


printNewLine:
mov ah, 0Eh
mov al, 0ah
int 10h
mov al, 0Dh
int 10h
jmp charInput


koniec:
mov AX, 4C00h
int 21h