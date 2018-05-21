#include <stdio.h>
#include <inttypes.h>

int main(void)
{
    size_t n;
    scanf("%zu", &n);
    uint_fast64_t p = 1;
    for (size_t i = 1; i <= n; ++i) {
        p = p * i % 1000000007;
    }
    printf("%" PRIuFAST64 "\n", p);
    return 0;
}
