

.org 0x0000
rjmp reset

.org 0x0002
rjmp int0_ISR

.org 0x0100

reset:
	                   ;Loading stack pointer address
          LDI R16,0x70
	  OUT SPL,R16
	  LDI R16,0x00
	  OUT SPH,R16

	  LDI R16,0X01     ;Interface port B pin0 to be output
	  OUT DDRB,R16     ;so to view LED blinking

	  LDI R16,0x00
	  OUT DDRD,R16

	  LDI R16,0X00     ;Set MCUCR register to enable low level interrupt
	  OUT MCUCR,R16

	  LDI R16,1<<INT0 ;Set GICR register to enable interrupt 0
	  OUT GICR,R16

	  LDI R16,0x00
	  OUT PORTB,R16

	  SEI
ind_loop:rjmp ind_loop

int0_ISR:
                 IN R16,SREG
		 PUSH R16

		 LDI R16,0x0A
		 MOV R0,R16
		 ;Modify below loops to make LED blink for 1 sec
	c1:	 LDI R16,0x01
		 OUT PORTB,R16

		 LDI R16,4
	a1:	 LDI R17,200
	a2:	 LDI R18,250
        a3:
                 NOP
                 NOP
                 DEC R18
		 BRNE a3
		 DEC R17
		 BRNE a2
                 DEC R16
                 BRNE a1
		 
		 LDI R16,0x00
		 OUT PORTB,R16

		 LDI R16,4
	b1:	 LDI R17,200
	b2:	 LDI R18,250
        b3:
                 NOP
                 NOP
                 DEC R18
		 BRNE b3
		 DEC R17
		 BRNE b2
                 DEC R16
                 BRNE b1
 
                 DEC R0
                 BRNE c1
                 POP R16
                 OUT SREG, R16
                 RETI
