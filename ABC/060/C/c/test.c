#include <stdio.h>
#include <inttypes.h>

// scanfがボトルネックになっている

static inline int_fast64_t max(int_fast64_t a, int_fast64_t b)
{
    return (a >= b) ? a : b;
}

int main(void)
{
    int_fast64_t n, t;
    scanf("%" SCNdFAST64" %" SCNdFAST64, &n, &t);
    int_fast64_t total = 0, tmp1 = 0, tmp2 = 0;
    for (int_fast64_t i = 0; i < n; ++i) {
        tmp1 = tmp2;
        scanf("%" SCNdFAST64, &tmp2);
        if (i > 0) {
            total += max(t - (tmp2 - tmp1), 0);
        }
    }
    printf("%" PRIdFAST64 "\n", n * t - total);
    return 0;
}
