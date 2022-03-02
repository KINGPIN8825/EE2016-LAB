	AREA Program ,CODE,READONLY

	LDR R0, list
	LDR	R5,	mask
	LDR	R10, Result
	
	MOV	R1,R0
	AND	R1,R5
	
	MOV	R1,R1,LSL	#4
	MOV	R0,R0,LSR	#8
	MOV	R2,R0
	AND	R2,R5
	ORR	R1,R2
	
	MOV	R1,R1,LSL	#4
	MOV	R0,R0,LSR	#8
	MOV	R2,R0
	AND	R2,R5
	ORR	R1,R2
	
	MOV	R1,R1,LSL	#4
	MOV	R0,R0,LSR	#8
	MOV	R2,R0
	AND	R2,R5
	ORR	R1,R2
	STR	R1,[R10]
done	b	done
list
	dcb	&0c
	dcb	&02
	dcb	&06
	dcb	&09
mask	dcd	&0000000F
Result	dcd	&40000000
	END