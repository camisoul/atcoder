#include <stdio.h>
#include <math.h>

int main(void)
{
    int n;
    scanf("%d", &n);

    int count = 0;
    double total = 0;
    for (int i = 0; i < n; ++i) {
        int a;
        scanf("%d", &a);
        if (a > 0) {
            ++count;
            total += a;
        }
    }
    printf("%.0f\n", ceil(total / count));

    return 0;
}
