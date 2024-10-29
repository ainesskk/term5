org 100h

; A / 3
mov al, A
mov ah, 0
mov dl, 3
div dl      ; AL = A/3
mov bh, al  ; BH = AL

; 3 * (A + B)
mov al, A
add al, B  ; A + B
mov ah, 0
mov bl, 3
imul bl     ; AL = 3 * (A + B)
sub bh, al  ; BH = A/3 - 3 * (A + B)

; C * 4
mov al, C  ; AL = C
shl al, 2   ; AL = C * 4 = 80
add bh, al  ; BH = A/3 - 3 * (A + B) + C * 4
mov X, bh

mov ah, 4ch
int 21h

A db 3  
B db 2   
C db 20  
X db ?