#include <stdio.h>
#include <string.h>

int main(void)
{
    char a[103], b[103];
    scanf("%s %s", a, b);
    char *pa = a;
    char *pb = b;
    if (strlen(a) == strlen(b)) {
        while (*pa != '\0') {
            if (*pa > *pb) {
                puts("GREATER");
                return 0;
            } else if (*pa < *pb) {
                puts("LESS");
                return 0;
            }
            ++pa;
            ++pb;
        }
        puts("EQUAL");
        return 0;
    }
    if (strlen(a) > strlen(b)) {
        puts("GREATER");
        return 0;
    }
    puts("LESS");
    return 0;
}
