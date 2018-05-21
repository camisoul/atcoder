#include <stdio.h>
#include <string.h>
#include <stddef.h>

int main(void)
{
    char s[200001];
    scanf("%s", s);
    char *p = strchr(s, 'A');
    char *q = strrchr(s, 'Z');
    ptrdiff_t d = q - p + 1;
    printf("%td\n", d);
    return 0;
}
