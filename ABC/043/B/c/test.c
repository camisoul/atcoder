#include <stdio.h>

int main(void)
{
    enum { S = 11 };
    char s[S];
    char ans[S];
    scanf("%s", s);
    char *p = s;
    for (size_t i = 0; *p != '\0'; ++p) {
        if (*p == 'B' && i > 0) {
                --i;
        } else {
                ans[i++] = *p;
        }
        ans[i] = '\0';
    }
    puts(ans);
    return 0;
}
