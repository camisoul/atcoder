#include <stdio.h>

int main(void)
{
    int a, b, c;
    scanf("%d %d %d", &a, &b, &c);
    printf("%s\n", (a + b == c || b + c == a || c + a == b) ? "Yes" : "No");
    return 0;
}
