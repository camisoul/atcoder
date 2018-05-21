#include <stdio.h>

int main(void)
{
    int n, k, x, y;
    scanf("%d %d %d %d", &n, &k, &x, &y);
    printf("%d\n", n <= k ? n * x : k * x + (n - k) * y);
    return 0;
}
