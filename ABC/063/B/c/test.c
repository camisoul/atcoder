#include <stdio.h>
#include <inttypes.h>

int main(void)
{
    uint_fast8_t a[26] = { 0 };
    char s[27];
    scanf("%s", s);
    char *p = s;
    while (*p != '\0') {
        if (++a[*p++ - 'a'] > 1) {
            puts("no");
            return 0;
        }
    }
    puts("yes");
    return 0;
}
