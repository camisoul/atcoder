#include <stdio.h>

int main(void)
{
    size_t n;
    scanf("%zu", &n);
    size_t as[8] = { 0 };
    size_t bc = 0, cc = 0;
    for (size_t i = 0; i < n; ++i) {
        size_t a;
        scanf("%zu", &a);
        size_t index = a / 400;
        if (a < 3200 && as[index] == 0) {
            ++bc;
            ++as[index];
        } else if (a >= 3200) {
            ++cc;
        }
    }
    printf("%zu %zu\n", bc > 1 ? bc : 1, bc + cc);
    return 0;
}
