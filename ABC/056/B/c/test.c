#include <stdio.h>

int main(void)
{
    int w, a, b, c;
    scanf("%d %d %d", &w, &a, &b);
    if (a > b) {
        c = a - b - w;
    } else {
        c = b - a - w;
    }
    printf("%d\n", c > 0 ? c : 0);
    return 0;
}
