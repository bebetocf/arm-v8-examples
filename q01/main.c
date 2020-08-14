/* main.c simple program to test assembler program */

#include <stdio.h>

void test(long long int *a, long long int *b, long long int *m);

int main(void)
{
    long long int a = 9, b = 10;
    long long int m = 8;
    test(&a, &b, &m);
    printf("a = %lld\n", a);
    printf("b = %lld\n", b);
    printf("m = %lld\n", m);
    return 0;
}
