#include <stdio.h>
#include <inttypes.h>

int main(void)
{
    uint_fast8_t n, x;
    scanf("%" SCNuFAST8 " %" SCNuFAST8, &n, &x);
    printf("%" PRIuFAST8 "\n", n - x <= x - 1 ? n - x : x - 1);
    return 0;
}
