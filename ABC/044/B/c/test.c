#include <stdio.h>

int main(void)
{
    char w[101];
    char c[26] = { 0 };

    scanf("%s", w);
    for (char *p = w; *p != '\0'; ++p) {
        ++c[*p - 'a'];
    }
    for (size_t i = 0; i < 26; ++i) {
        if (c[i] % 2 == 1) {
            puts("No");
            return 0;
        }
    }
    puts("Yes");

    return 0;
}
