#include <stdio.h>
#include <inttypes.h>

int main(void)
{
    uint_fast8_t a, b;
    scanf("%" SCNuFAST8 " %" SCNuFAST8, &a, &b);
    if (a == 1) {
        a = 14;
    }
    if (b == 1) {
        b = 14;
    }
    if (a > b) {
        puts("Alice");
    } else if (a < b) {
        puts("Bob");
    } else {
        puts("Draw");
    }
    return 0;
}
