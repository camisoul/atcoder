#include <stdio.h>
#include <inttypes.h>

int main(void)
{
    int_fast32_t n;
    int_fast32_t min = INT_FAST32_MAX;
    scanf("%" SCNdFAST32, &n);
    for (int_fast32_t i = 1; i * i <= n; ++i) {
        for (int_fast32_t j = (n / i); j >= i; --j) {
            int_fast32_t t = (n - i * j) + (j - i);
            if (t < min) {
                min = t;
            }
        }
    }
    printf("%" PRIdFAST32 "\n", min);

    return 0;
}
