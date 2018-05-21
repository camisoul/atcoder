#include <stdio.h>
#include <inttypes.h>

int main(void)
{
    size_t n;
    scanf("%zu", &n);
    uint_fast16_t a[n];
    uint_fast16_t t = 0;
    uint_fast16_t min = UINT_FAST16_MAX;
    for (size_t i = 0; i < n; ++i) {
        scanf("%" SCNuFAST16, &a[i]);
        t += a[i];
        if (a[i] % 10 != 0 && a[i] < min) {
            min = a[i];
        }
    }
    if (t % 10 == 0) {
        printf("%" PRIuFAST16 "\n", min == UINT_FAST16_MAX ? 0 : t - min);
    } else {
        printf("%" PRIuFAST16 "\n", t);
    }
    return 0;
}
