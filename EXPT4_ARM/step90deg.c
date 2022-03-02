#include "LPC23xx.h"

void delay()
{
    int i, j;
    
    for(i = 0;i < 0xFF; i++)
        for(j = 0;j < 0xFF; j++);
}

int main()
{
    IODIR0 = 0xFFFFFFFF;
	int count = 1;
    while(count<=9) // assuming step size is 5deg and total rotation required is 180deg, 180/(5*4) = 9
    {
        IOPIN0 = 0x00000240;
        delay();
        IOPIN0 = 0x00000140;
        delay();
        IOPIN0 = 0x00000180;
        delay();
        IOPIN0 = 0x00000280;
        delay();
			count =count +1;
    }
    return 0;
	}