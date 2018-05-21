#include <stdio.h>
#include <inttypes.h>

int main(void)
{
    size_t n;
    scanf("%zu", &n);
    int_fast32_t max = INT_FAST32_MIN;
    int_fast32_t min = INT_FAST32_MAX;
    for (size_t i = 0; i < n; ++i) {
        int_fast32_t a;
        scanf("%" SCNdFAST32, &a);
        if (max < a) {
            max = a;
        }
        if (min > a) {
            min = a;
        }
    }
    printf("%" PRIdFAST32 "\n", max - min);
    return 0;
}
