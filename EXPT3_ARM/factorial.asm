	AREA FACTORIAL,CODE,READONLY
	LDR	R0,NUM
	LDR	R1,NUM
fact
	SUBS	R0,R0,#0
	BEQ	one
	SUBS	R0,R0,#1
	BEQ	one
	MUL	R2,R1,R0
	MOV	R1,R2
	B fact
one	
	MOV	R2,#1
	b	one
	
NUM	DCW	&5
	END