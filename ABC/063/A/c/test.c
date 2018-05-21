#include <stdio.h>
#include <inttypes.h>

int main(void)
{
    uint_fast8_t a, b;
    scanf("%" SCNuFAST8 " %" SCNuFAST8, &a, &b);
    if (a + b >= 10) {
        puts("error");
    } else {
        printf("%" PRIuFAST8 "\n", a + b);
    }
    return 0;
}
