#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    int a, b, c;
    char p[128];

    scanf("%d", &a);
    scanf("%d %d", &b, &c);
    scanf("%s", p);

    int d = a + b + c;
    printf("%d %s\n", d, p);

    return 0;
}
