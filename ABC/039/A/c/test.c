#include <stdio.h>
#include <inttypes.h>

int main(void)
{
    uint_fast32_t a, b, c;
    scanf("%" SCNuFAST32 " %" SCNuFAST32 " %" SCNuFAST32, &a, &b, &c);
    printf("%" PRIuFAST32 "\n", (a * b + b * c + c * a) * 2);
    return 0;
}
