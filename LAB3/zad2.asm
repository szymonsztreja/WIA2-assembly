org     100h		;  

	mov ah, 3Ah
	mov dx, alias
	
	int 0x21

	mov ax, 0x4C00
	int 0x21

alias db "SS48", 0h