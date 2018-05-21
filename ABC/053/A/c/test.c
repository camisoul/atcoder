#include <stdio.h>
#include <inttypes.h>

int main(void)
{
    uint_fast16_t x;
    scanf("%" SCNuFAST16, &x);
    printf("%s\n", (x < 1200) ? "ABC" : "ARC");
    return 0;
}
