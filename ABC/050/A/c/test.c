#include <stdio.h>
#include <inttypes.h>

int main(void)
{
    int64_t a, b;
    char c;
    scanf("%" SCNd64" %c %" SCNd64, &a, &c, &b);
    printf("%" PRId64 "\n", c == '+' ? a + b : a - b);
    return 0;
}
