#include <stdio.h>

int main(void)
{
    int d[102] = { 0 };
    int a, b, c, t = 0;
    scanf("%d %d %d", &a, &b, &c);
    ++d[a];
    ++d[b];
    ++d[c];
    for (int i = 1; i < 101; ++i) {
        if (d[i] > 0) {
            ++t;
        }
    }
    printf("%d\n", t);

    return 0;
}
