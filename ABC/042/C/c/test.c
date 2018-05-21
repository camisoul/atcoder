#include <stdio.h>
#include <string.h>
#include <inttypes.h>
#include <stdbool.h>

bool contain(uint32_t n, const char *d)
{
    char s[6];
    for (; *d != '\0'; ++d) {
        snprintf(s, sizeof(s), "%" PRIu32, n);
        if (strchr(s, *d) != NULL) {
            return true;
        }
    }
    return false;
}

int main(void)
{
    uint32_t n, k;
    char d[10] = "";
    scanf("%" SCNu32 " %" SCNu32, &n, &k);
    for (uint32_t j = 0; j < k; ++j) {
        char s[2];
        scanf("%s", s);
        strcat(d, s);
    }
    while (contain(n, d)) {
        ++n;
    }
    printf("%" PRIu32 "\n", n);

    return 0;
}
