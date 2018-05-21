#include <stdio.h>
#include <inttypes.h>

int main(void)
{
    uint_fast16_t r, g, b;
    scanf("%" SCNuFAST16 " %" SCNuFAST16 " %" SCNuFAST16, &r, &g, &b);
    puts((r * 100 + g * 10 + b) % 4 == 0 ? "YES" : "NO");
    return 0;
}
