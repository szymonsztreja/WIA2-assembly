org 100h

mov ah, 08h			; ustaw ah na pobieranie chara od użytkownika, pobrany char jest w AL
int 21h				; wywołanie przerwania

mov ah, 5Fh			; znak "_"
mov bl, al
cmp bl, ah

JE equal
JG greater
JB lesser

equal:
mov ah, 02h
mov dl, '='
int 21h
jmp error

greater:
mov ah, 02h
mov dl, '>'
int 21h
jmp isSmallLetter

lesser:
mov ah, 02h
mov dl, '<'
int 21h
jmp isGreatLetter

isSmallLetter:
cmp bl, 7Ah
JE ptnlSmallLetter
JG error
JB ptnlSmallLetter

isGreatLetter:
cmp bl, 41h
JE ptnlGreatLetter
JG ptnlGreatLetter
JB error

ptnlSmallLetter:
cmp bl, 61h
JE smallLetter
JG smallLetter
JB error

ptnlGreatLetter:
cmp bl, 5Ah
JE bigLetter
JG error
JB bigLetter

bigLetter:
mov dx, bigLtrString 
mov ah, 9     
int 0x21
jmp koniec  

smallLetter:
mov dx, smlLtrString 
mov ah, 9     
int 0x21
jmp koniec  

error:  
mov dx, errorString
mov ah, 9     
int 0x21
jmp koniec  

koniec:
mov AX, 4C00h
int 21h

bigLtrString db "wielka litera",0Ah,0Dh,"$"
smlLtrString db "mala litera",0Ah,0Dh,"$" 
errorString db "error",0Ah,0Dh,"$"