/* main.c simple program to test assembler program */

#include <stdio.h>

long long int test(char *a);

int main(void)
{
    char a[] = "678";
    long long int x;
    x = test(a);
    printf("a = %s\n", a);
    printf("x = %lld\n", x);
    return 0;
}
