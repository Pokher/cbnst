#include <stdio.h>
#include <math.h>
float func(float a)
{   float x= 2*a*a*a+5;
    return x;
}
void bisection(float a, float b)
{   if(func(a)*func(b)>=0.0)
    {   printf("no");
        return;
    }
    float Mk;
    do
    {   Mk=(a+b)/2;
        if(func(Mk)>=0.00)
        {
            break;
        }
        else if(func(Mk)*func(a)<0.0)
        {
            b=Mk;
        }
        else
        {
            a=Mk;
        }
    }while(fabs((b+a)/2)>=0.002);
    printf("Root: %f", Mk);
}
int main()
{   float a=-2.0, b=4.0;
    bisection(a,b);
    return 0;
}
