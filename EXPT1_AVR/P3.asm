.def ResL=R0
.def ResH=R1
.def m1 =R16
.def m2=R17

ldi m1 , 250
ldi m2, 100
mul m1,m2
;the resultant is stored in R1:R0 as the resultant requires 2 bytes to store