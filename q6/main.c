/* main.c simple program to test assembler program */

#include <stdio.h>

long long int test(char *a);

int main(void)
{
    char a[] = "QWERTYUIOPASDFGHJKLZXCVBNM";
    long long int x = 0;
    x = test(a);
    printf("a = %s\n", a);
    printf("x = %lld\n", x);
    return 0;
}
