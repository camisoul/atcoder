#include <stdio.h>
#include <string.h>

int main(void)
{
    char a[51];
    char b[51];

    scanf("%s", a);
    scanf("%s", b);

    printf("%s\n", strlen(a) > strlen(b) ? a : b);

    return 0;
}
