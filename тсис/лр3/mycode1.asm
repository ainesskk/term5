mov ax,0255
inc ax
add ax, alpha
nop
mov bx,ax
dec bx
sub bx, beta
mov dx, bx
sub dx,10
xchg ax,dx
push bx
push ax
pop cx
mov si,cx
mov di,dx
mov 0150h,cx
shl ax,2
mov dx, offset hello
mov ax,0900h
int 21h
mov ax,4c00h
int 21h
ret
alpha dw 25
beta dw 32
hello db 'Privet kafedra IS!$'
