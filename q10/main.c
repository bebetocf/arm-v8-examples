/* main.c simple program to test assembler program */

#include <stdio.h>

long long int test(char *a, long long int b);

int main(void)
{
    char a[] = "62558";
    long long int b = 9;
    long long int x;
    x = test(a, b);
    printf("a = %s\n", a);
    printf("b = %lld\n", b);
    printf("x = %lld\n", x);
    return 0;
}
