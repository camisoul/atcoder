#include <stdio.h>
#include <string.h>

int choku(char *s, size_t len)
{
    for (size_t n = 0u; n < len; ++n) {
        if (s[n] == '\0') {
            break;
        }
        switch (s[n]) {
            case 'o':
            case 'k':
            case 'u':
                break;
            case 'c':
                if (n < len - 1 && s[n + 1] == 'h') {
                    ++n;
                    break;
                }
                return 0;
            default:
                return 0;
        }
    }
    return 1;
}

int main(void)
{
    char s[51];
    scanf("%s", s);

    printf(choku(s, strlen(s)) ? "YES\n" : "NO\n");

    return 0;
}
