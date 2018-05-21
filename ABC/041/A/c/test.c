#include <stdio.h>

int main(void)
{
    char s[101];
    size_t i;
    scanf("%s %zu", s, &i);
    printf("%c\n", s[i - 1]);

    return 0;
}
