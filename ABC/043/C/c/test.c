#include <stdio.h>
#include <stdint.h>
#include <limits.h>

static int32_t maximum(void *x, int32_t s)
{
    int32_t *a = x;
    int32_t max = INT32_MIN;
    for (int32_t i = 0; i < s; ++i) {
        if (a[i] > max) {
            max = a[i];
        }
    }
    return max;
}

static int32_t minimum(void *x, int32_t s)
{
    int32_t *a = x;
    int32_t min = INT32_MAX;
    for (int32_t i = 0; i < s; ++i) {
        if (a[i] < min) {
            min = a[i];
        }
    }
    return min;
}

static int32_t cost(void *x, int32_t c, int32_t s)
{
    int32_t *a = x;
    if (s <= 0) {
        return 0;
    }
    return (*a - c) * (*a - c) + cost(a + 1, c, s - 1);
}

int main(void)
{
    int32_t n;
    scanf("%d", &n);
    int32_t a[n];
    for (int32_t i = 0; i < n; ++i) {
        scanf("%d", &a[i]);
    }

    int32_t j = minimum(a, n);
    int32_t k = maximum(a, n);
    int32_t l = k - j + 1;
    int32_t b[l];
    for (int32_t i = 0, c = j; c <= k; ++c, ++i) {
        b[i] = cost(a, c, n);
    }
    printf("%d\n", minimum(b, l));

    return 0;
}
