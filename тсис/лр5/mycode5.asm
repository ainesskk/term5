data segment
i db 0
SUM DW 0
ELEMENT_POSITION DW 0
ELEMENT DB 0
MAS1 DB 150 DUP(0)
MAS2 DB 150 DUP(0)
last_digit DB 75
ends

stack segment
dw 128 dup(0)
ends

code segment
start:

mov ax, data
mov ds, ax
mov es, ax


LEA DI, MAS1
MOV CX, 150
MOV BX, 1

FILL_LOOP:
mov bh,i 
mov MAS1[si],bh
inc i
inc si
loop FILL_LOOP

LEA SI, MAS1
LEA DI, MAS2
MOV CX, 150
REP MOVSB 

MOV AL, [last_digit]
MOV CX, 150
LEA SI, MAS1

FIND_LOOP:
CMP MAS1[SI], AL
JE FOUND
INC SI
MOV CL, MAS1[SI]
MOV ELEMENT, CL
MOV ELEMENT_POSITION, SI
LOOP FIND_LOOP

JMP NOT_FOUND

NOT_FOUND:
MOV ELEMENT_POSITION, -1
MOV ELEMENT, -1

FOUND:

MOV CX, 150
LEA SI, MAS1
XOR AX, AX
XOR BX, BX
SUM_LOOP:
MOV BL, MAS1[SI]
ADD AX, BX
INC SI
LOOP SUM_LOOP

MOV SUM, AX

mov ax, 4c00h
int 21h
ends
end start