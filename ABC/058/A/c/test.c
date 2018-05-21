#include <stdio.h>
#include <inttypes.h>

int main(void)
{
    int_fast8_t a, b, c;
    scanf("%" SCNdFAST8 " %" SCNdFAST8 " %" SCNdFAST8, &a, &b, &c);
    printf("%s\n", b - a == c - b ? "YES" : "NO");
    return 0;
}
