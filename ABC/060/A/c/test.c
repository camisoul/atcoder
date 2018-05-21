#include <stdio.h>
#include <string.h>

int main(void)
{
    enum { S = 10 + 1 };
    char a[S], b[S], c[S];
    scanf("%s %s %s", a, b, c);
    if (a[strlen(a) - 1] == b[0] && b[strlen(b) - 1] == c[0]) {
        puts("YES");
        return 0;
    }
    puts("NO");
    return 0;
}
