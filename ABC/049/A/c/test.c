#include <stdio.h>

int main(void)
{
    int c = getchar();
    if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u') {
        puts("vowel");
    } else {
        puts("consonant");
    }
    return 0;
}
