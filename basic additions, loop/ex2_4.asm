
MOV 50H, #03H
MOV 51H, #33H
MOV 52H, #40H
MOV 53H, #13H
MOV 54H, #20H
MOV 55H, #19H

MOV R4, #05H
AGAIN: MOV R3, #05H
MOV R0, #50H

DOWN: MOV A,@R0
MOV R1, A
INC R0
SUBB A, R1
JC SKIP
MOV A, @R0
DEC R0
XCH A, @R0
INC R0
MOV @R0,A
SKIP: DJNZ R3, DOWN
DJNZ R4, AGAIN
END