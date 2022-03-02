.def num1low =R16     ; defining lower byte of the 16 bit number 1 in R16
.def num1high =R17    ; defining higher byte of the 16 bit number 1 in R17
.def num2low =R18     ; defining lower byte of the 16 bit number 2 in R18
.def num2high =R19    ; defining higher byte of the 16 bit number 2 in R19

.CSEG
ldi R16,0x34          ; number 1 is 0x1234, inwhich lower byte is loaded here
ldi R17,0x12          ; number 1 is 0x1234, inwhich higher byte is loaded here
ldi R18,0xCD          ; number 2 is 0xABCD, inwhich lower byte is loaded here
ldi R19,0xAB          ; number 2 is 0xABCD, inwhich higher byte is loaded here
ldi R20, 0x00

ADD num1low,num2low
ADC num1high,num2high
BRCC abc
ldi R20,0X01
NOP                   ;R20:R17:R16 has the higher and lower byte of the resultant number and R20 has carry
abc:
NOP                   ;R20:R17:R16 has the higher and lower byte of the resultant number and R20 has carry