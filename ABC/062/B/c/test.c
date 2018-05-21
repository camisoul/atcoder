#include <stdio.h>

int main(void)
{
    size_t n, w;
    scanf("%zu %zu", &n, &w);
    for (size_t i = 0; i < w + 2; ++i) {
        putchar('#');
    }
    putchar('\n');
    for (size_t i = 0; i < n; ++i) {
        char s[w + 1];
        scanf("%s", s);
        printf("#%s#\n", s);
    }
    for (size_t i = 0; i < w + 2; ++i) {
        putchar('#');
    }
    putchar('\n');
    return 0;
}
