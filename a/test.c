#include <stdio.h>

float subtract(float in1, float in2) //provided by gem5 documentation
{
float ret = 0.0;
asm ("fsubr %2, %0" : "=&t" (ret) : "%0" (in1), "u" (in2));
return ret;
}

int main() {
    float a = 26;
    float b = 5;

    a = subtract(a, b);

    printf("Result: %f\n", a);

    return 0;
}
