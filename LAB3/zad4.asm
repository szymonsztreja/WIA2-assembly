org 100h		;ustawia początek programu w pamięci do adresu 1*16^2 256

mov ah, 13h 
mov al, 1		; czy jest atrybut w bl
mov bl, 0bh		; attrybut nie wiem do końca o co cho
mov cx, 0xF		; ilość znaków w napisie
mov dl, 70h		; kolumna gdzie bedzie napisany napis
mov dh, 0xA		; wiersz gdzie bedzie napisany napis
mov bp, msg		; string do wypisania
int 10h			; wywołanie przerwania karty vga?

mov ax, 0x4C00
int 0x21

msg db "Szymon Sztreja"
