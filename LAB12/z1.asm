org 0x100

;(a * b) / (2 * c) = a b * 2 c * /

;mov cx, 10
;petla:
;	mov ah, 09h
;	mov dx, tekst
;	int 21h
;loop petla


mov ah, 0Ah
mov dx, newOnp
int 21h

mov bp, newOnp+2
main_loop:
	mov al, [bp]
	
	cmp byte [bp], '$'
	je koniec
	
	cmp byte [bp], 30h
	jge to_stack		;dodawnie do stosu
	push return
	
	cmp byte [bp], '+'
	je dodawanie
	
	cmp byte [bp], '-'
	je odejmowanie
	
	cmp byte [bp], '*'
	je mnozenie
	
	cmp byte [bp], '/'
	je dzielenie
	
	
	return:
	add bp, 2
jmp main_loop

koniec:
mov AX, 4c00h
int 21h

to_stack:
	mov al, [bp]
	sub al, 30h
	mov ah, 0
	push ax
jmp return

a dw 02h
b dw 04h
c dw 06h
onp db "9 7 * 2 4 * / $"
tekst db "jajco", 0Ah, 0Dh, "$"


%include "operacje.asm"
newOnp db 16h