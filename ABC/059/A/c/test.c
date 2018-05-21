#include <stdio.h>
#include <ctype.h>

int main(void)
{
    enum { S = 11 };
    char s1[S], s2[S], s3[S];
    scanf("%s %s %s", s1, s2, s3);
    printf("%c%c%c\n", toupper(s1[0]), toupper(s2[0]), toupper(s3[0]));
    return 0;
}
