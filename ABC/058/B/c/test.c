#include <stdio.h>

int main(void)
{
    enum { S = 50, SS = S + 1, RS = S * 2 + 1 };
    char o[SS], e[SS];
    scanf("%s %s", o, e);
    char r[RS] = "";
    char *p = r;
    for (size_t i = 0; i < SS; ++i) {
        if (o[i] != '\0') {
            *p++ = o[i];
        } else {
            break;
        }
        *p++ = e[i];
    }
    *p = '\0';
    printf("%s\n", r);
    return 0;
}
