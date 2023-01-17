org 0x100

;(a * b) / (2 * c) = a b * 2 c * /

org 100h

mov AX, 0012h
int 10h

mov  AX, 1h
int 33h

main_loop:
	mov AH, 01h
	int 16h
	
	cmp AH, 10h		
	je end			;skok do konca po litrce q
	
	cmp AH, 11h
	je change_color	;skok do zmiany kolor po literce w
	
	mov AX, 0003h
	int 33h
	cmp BX, 0001h
	je write_pixel
jmp main_loop


write_pixel:
	mov AH, 0Ch
	mov AL, [color]
	int 10h
	dec CX
	int 10h
	dec CX
	int 10h
	dec DX
	int 10h
	inc CX 
	int 10h
	inc CX
	int 10h
	dec DX
	int 10h
	dec CX
	int 10h
	dec CX
	int 10h
	
jmp main_loop

change_color:
	inc byte [color]
	mov AH, 00h
	int 16h
	mov CX, 10h
	mov DX, 10h
jmp write_pixel

end:
mov AH, 00h
int 16h
mov AX, 0002h
int 10h
mov AX, 4c00h
int 21h

color db 01h