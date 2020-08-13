/* main.c simple program to test assembler program */

#include <stdio.h>

void test(long long int *a, long long int *b, long long int *c, long long int *x);

int main(void)
{
    long long int a = 9, b = 10, c = 25;
    long long int x = 8;
    test(&a, &b, &c, &x);
    printf("a = %lld\n", a);
    printf("b = %lld\n", b);
    printf("c = %lld\n", c);
    printf("x = %lld\n", x);
    return 0;
}
