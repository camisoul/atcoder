#include <stdio.h>
#include <inttypes.h>

int main(void)
{
    uint_fast8_t n, m;
    scanf("%" SCNuFAST8 " %" SCNuFAST8, &n, &m);
    uint_fast8_t r[51] = { 0 };
    for (size_t i = 0; i < m; ++i) {
        uint_fast8_t a, b;
        scanf("%" SCNuFAST8 " %" SCNuFAST8, &a, &b);
        ++r[a - 1];
        ++r[b - 1];
    }
    for (size_t i = 0; i < n; ++i) {
        printf("%" PRIuFAST8 "\n", r[i]);
    }
    return 0;
}
