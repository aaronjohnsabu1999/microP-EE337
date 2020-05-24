org 0H
ljmp main

org 100H
main:
    mov r2, #1          
    mov r1, #50H         
    mov r3, #51H	
    mov a, 50H          
    jz here             
    
loop:	mov a, #0H            
	mov b, r2		
	mul a b
	mov @r3,a
	inc r3
	inc r2
	djnz r1, loop
    here : sjmp here        
end
