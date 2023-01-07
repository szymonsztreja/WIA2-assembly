org 100h


mov dh, 10h
mov dl, 0h

compare:
cmp dh, dl

jg choinka
je koniec


choinka:
push word 0Ah
push word 01h
call printRow
add sp, 4
jmp compare

printRow:
	push bp
	mov bp, sp
	pusha
	mov bl, [bp+6]
	cmp bl, 0h;
	compareSpaces:
	jg printSpace
	je compareHash
	
	compareHash:
	mov bl, [bp+4]
	cmp bl, 0h
	comparesHashes:
	jg printHash
	je reszta
	reszta:
	dec ah
ret

printSpace:
push word [space]
call print
add sp, 2
dec bl
jmp compareSpaces

printHash:
push word [hash]
call print
add sp, 2
dec bl
jmp comparesHashes

koniec:
mov ah, 4Ch
int 21h

print:
	push bp
	mov bp, sp
	pusha
	mov dx, [bp+4]
	mov ah, 02h
	int 21h
	popa
	pop bp
ret

hash dw 23h
space dw 20h
; jedna funkcja drukuje znak
; druga drukuje dany znak pewną ilość razy

