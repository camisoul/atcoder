#include <stdio.h>
#include <inttypes.h>

static int_fast32_t f32abs(int_fast32_t v)
{
    return (v < 0) ? -v : v;
}

typedef struct {
    int_fast32_t x;
    int_fast32_t y;
} Point;

int main(void)
{
    enum { S = 51 };
    size_t n, m;
    scanf("%zu %zu", &n, &m);
    Point x[S];
    for (size_t i = 0; i < n; ++i) {
        scanf("%" SCNdFAST32 " %" SCNdFAST32, &x[i].x, &x[i].y);
    }
    Point y[S];
    for (size_t j = 0; j < m; ++j) {
        scanf("%" SCNdFAST32 " %" SCNdFAST32, &y[j].x, &y[j].y);
    }
    for (size_t i = 0; i < n; ++i) {
        size_t index = 0;
        int_fast32_t minvalue = INT_FAST32_MAX;
        for (size_t j = 0; j < m; ++j) {
            int_fast32_t value = f32abs(x[i].x - y[j].x) + f32abs(x[i].y - y[j].y);
            if (value < minvalue) {
                minvalue = value;
                index = j + 1;
            }
        }
        printf("%zu\n", index);
    }
    return 0;
}
