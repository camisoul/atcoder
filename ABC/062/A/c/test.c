#include <stdio.h>
#include <inttypes.h>

int main(void)
{
    const uint_fast8_t g[] = { 0, 1, 3, 1, 2, 1, 2, 1, 1, 2, 1, 2, 1 };
    uint_fast8_t       x, y;
    scanf("%" SCNuFAST8 " %" SCNuFAST8, &x, &y);
    puts(g[x] == g[y] ? "Yes" : "No");
    return 0;
}
