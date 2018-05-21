#include <stdio.h>
#include <inttypes.h>

int main(void)
{
    size_t n;
    scanf("%zu", &n);
    char s[n];
    scanf("%s", s);
    int_fast8_t m = 0;
    int_fast8_t max = 0;
    for (size_t i = 0; i < n; ++i) {
        (s[i] == 'I') ? ++m : --m;
        if (max < m) {
            max = m;
        }
    }
    printf("%" PRIdFAST8 "\n", max);

    return 0;
}
