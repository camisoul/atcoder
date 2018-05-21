#include <stdio.h>
#include <stdlib.h>

// 200/300
// クイックソートでは5要素のときに正解を出せない

static int compare_hand(const void *a, const void *b)
{
    printf("? %c %c\n", *(const char *)a, *(const char *)b);
    fflush(stdout);

    char c;
    scanf(" %c", &c);
    if (c == '>') {
        return 1;
    } else if (c == '<') {
        return -1;
    }
    return 0;
}

int main(void)
{
    char s[27];
    int n, q;

    scanf("%d %d", &n, &q);

    for (int i = 0; i < n; ++i) {
        s[i] = (char)('A' + i);
    }
    s[n] = '\0';

    qsort(s, (size_t)n, sizeof(char), compare_hand);

    printf("! %s\n", s);
    fflush(stdout);

    return 0;
}
