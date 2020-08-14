/* main.c simple program to test assembler program */

#include <stdio.h>

char test(char *a, char *b);

int main(void)
{
    char a[] = "AE";
    char b[] = "ZQ";
    char x;
    x = test(a, b);
    printf("a = %s\n", a);
    printf("b = %s\n", b);
    printf("x = %c\n", x);
    return 0;
}
