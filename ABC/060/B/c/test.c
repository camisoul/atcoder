#include <stdio.h>

int main(void)
{
    size_t a, b, c;
    scanf("%zu %zu %zu", &a, &b, &c);
    for (size_t n = 1; n <= b; ++n) {
        if ((n * a % b) % b == c) {
            puts("YES");
            return 0;
        }
    }
    puts("NO");
    return 0;
}
