MOV 50H, #03H
MOV 51H, #04H
MOV 52H, #05H
MOV 53H, #06H
MOV 54H, #07H

MOV R0, #50H
MOV R1, #05H
MOV R2, #00H ; Odd
MOV R3, #00H  ; Even

LOOP: MOV B, #02H
	  MOV A, @R0
	  MOV R4, A
	  DIV AB
	  MOV R5, B
	  CJNE R5, #00H, ODD
	  MOV A, R4
	  ADD A, R3
	  MOV R3, A
	  SJMP FINAL
	  
ODD: MOV A, R4
	 ADD A, R2
	 MOV R2, A
	 
	 FINAL:INC R0
	 DJNZ R1, LOOP
	 END
		


