mvi h, 02H
mvi l, 00H

mvi m, F0H
inr l
mvi m, 0BH
inr l
mvi m, 01H
inr l
mvi m, 09H
inr l
mvi m, 0CH
inr l
mvi m, 02H
inr l
mvi m, E1H
inr l
mvi m, 02H
inr l
mvi m, 03H
inr l
mvi m, 07H

mvi h, 03H
mvi b, FFH
mvi d, 00H
mvi e, 0AH
count:
	mvi h, 02H
	mov l, d
	mov a, m
	mvi h, 03H
	mov l, a
	dcr l
	inr d
	inr m
	dcr b
	dcr e
	jnz count

mvi b, 00H  
mvi d, 00H  
mvi l, 00H 
mvi c, 00H
mvi a, FFH
sort:
	mvi a, 0AH
	mvi h, 03H
	mov l, c
	mov e, m
	inr c  
	cmp d 
	jz sort_loop_out
      jmp print

print:
	mvi a, 00H
	cmp e
	jz e_is_null
      mvi h, 04H  
      mov l, d   
      mov m, c
	inr d  
      dcr e  
      jnz print

e_is_null:
      dcr c 
	inr c 
      jnz sort
   
sort_loop_out:

mvi h, 04H
mvi l, 03H 
mvi b, 00H
mvi e, FFH
sum:
	mov a, b
	add m
	mov b, a
	inr l
	inr l
	inr l
	mov a, l
	cmp e
	jc sum

mvi h, 05H	
mvi l, 02H 
mov m, b
mvi h, 04H
mvi l, 00H
mov a, m
mvi h, 05H
mov m, a
mvi h, 04H
mvi l, 09H
mov a, m
mvi h, 05H	
mvi l, 01H 
mov m, a
hlt