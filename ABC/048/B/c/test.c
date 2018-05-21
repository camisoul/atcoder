#include <stdio.h>
#include <inttypes.h>

int main(void)
{
    intmax_t a, b, x;
    scanf("%" SCNdMAX " %" SCNdMAX " %" SCNdMAX, &a, &b, &x);
    printf("%" PRIdMAX "\n", b / x - (a == 0 ? -1 : (a - 1) / x));
    return 0;
}
