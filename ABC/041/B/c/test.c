#include <stdio.h>
#include <inttypes.h>

#define S 1000000007

int main(void)
{
    uintmax_t a, b, c;
    scanf("%" SCNuMAX " %" SCNuMAX " %" SCNuMAX , &a, &b, &c);
    printf("%" PRIuMAX "\n", a % S * b % S * c % S);
    return 0;
}
