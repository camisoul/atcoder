#include <stdio.h>
#include <inttypes.h>

int main(void)
{
    size_t  a, b, c;
    uint8_t s[8] = { 0 };
    scanf("%zu %zu %zu", &a, &b, &c);
    s[a]++;
    s[b]++;
    s[c]++;
    puts((s[5] == 2 && s[7] == 1) ? "YES" : "NO");
    return 0;
}
