.CSEG
LDI R16, 100
LDI R17, 200
ADD R16,R17
BRCC abc
ldi R17,0X01
NOP                   ;R17:R16 is the result and R17 has the carry
abc:
NOP                   ;R17:R16 is the result and R17 has the carry