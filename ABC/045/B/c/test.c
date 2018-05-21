#include <stdio.h>

int main(void)
{
    enum { S = 101 };
    char a[S], b[S], c[S];
    char *p[] = { a, b, c };
    scanf("%s %s %s", a, b, c);

    char d = *p[0]++;
    for (;;) {
        if (*p[d - 'a'] == '\0') {
            printf("%c\n", d - 'a' + 'A');
            break;
        }
        d = *p[d - 'a']++;
    }

    return 0;
}
