#include <stdio.h>
#include <inttypes.h>

int main(void)
{
    uint_fast8_t a, b;
    scanf("%" SCNuFAST8 "%" SCNuFAST8, &a, &b);
    printf("%" PRIuFAST8 "\n", (a + b) % 24);
    return 0;
}
