#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void)
{
    size_t n, l;
    scanf("%zu %zu", &n, &l);

    char s[n][l + 1];
    for (size_t i = 0; i < n; ++i) {
        scanf("%s", s[i]);
    }
    qsort(s, n, l + 1, (void *)strcmp);
    for (size_t i = 0; i < n; ++i) {
        printf("%s", s[i]);
    }
    puts("");

    return 0;
}
