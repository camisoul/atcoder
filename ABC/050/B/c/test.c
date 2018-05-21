#include <stdio.h>

int main(void)
{
    int n;
    scanf("%d", &n);
    int t[n];
    int total = 0;
    for (int i = 0; i < n; ++i) {
        scanf("%d", &t[i]);
        total += t[i];
    }
    int m;
    scanf("%d", &m);
    for (int i = 0; i < m; ++i) {
        int p, x;
        scanf("%d %d", &p, &x);
        printf("%d\n", total - t[p - 1] + x);
    }
    return 0;
}
