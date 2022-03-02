	AREA program,CODE,READONLY
	ENTRY
	LDR R1,NUM
	MOVS	R1,R1,LSR #1
	bcs odd
even
	MOV	R0,#0
	b	even
odd
	MOV	R0,#1
	b	odd
	swi	&11
NUM DCD  0x00000004
	align
	END