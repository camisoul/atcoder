#include <stdio.h>

int main(void)
{
    char s[20];
    scanf("%s", s);
    s[5]  = ' ';
    s[13] = ' ';
    puts(s);
    return 0;
}
