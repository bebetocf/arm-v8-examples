/* main.c simple program to test assembler program */

#include <stdio.h>

long long int test(char *a, char *b);

int main(void)
{
    char a[] = "grnrclszemskvbgcluwtgyvieip";
    char b[] = "leg";
    long long int x;
    x = test(a, b);
    printf("a = %s\n", a);
    printf("b = %s\n", b);
    printf("x = %lld\n", x);
    return 0;
}
