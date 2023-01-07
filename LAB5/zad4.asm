org 100h

mov ax, [a]
mov bl, [b]			; w sumie nie wiem czemu do bl wkładam
div bl				; div da wynik całkowietego dzielenia do AL a reszte do AH
mov cx, [c]
add al, cx

mov AX, 4C00h
int 21h

a dw 0x04
b dw 0x03
c dw 0x02
y dw 0x0