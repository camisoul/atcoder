#include <stdio.h>

int main(void)
{
    int h, w;
    scanf("%d %d", &h, &w);
    char s[w + 1];
    for (int i = 0; i < h; ++i) {
        scanf("%s", s);
        printf("%s\n%s\n", s, s);
    }
    return 0;
}
