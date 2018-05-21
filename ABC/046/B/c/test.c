#include <stdio.h>

static int powi(int b, int e) {
    int a = 1;
    while (e != 0) {
        a *= b;
        --e;
    }
    return a;
}

int main(void)
{
    int n, k;
    scanf("%d %d", &n, &k);
    printf("%d\n", k * powi(k - 1, n - 1));
    return 0;
}
