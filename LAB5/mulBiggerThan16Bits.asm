org 100h

mov ax, 100h			; AX = 100h
mov cx, 100h			; CX = 100h
mul cx					; AX = AX *  CX => AX = 100h * 100h = 10000h > 16bit 
						; wynik zapisany jest DX AX czyli wnik 10000h jest zapisany w DX i AX
mov AX, 4C00h			; DX: 0001 AX: 0000 (DX:1 AX:0000)
int 21h