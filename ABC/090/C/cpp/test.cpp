#include <iostream>

using namespace std;

namespace {
size_t count(size_t n, size_t m)
{
    if (n > m) {
        swap(n, m);
    }
    if (n == 1) {
        if (m == 1) {
            return 1;
        } else {
            return m - 2;
        }
    }
    return (n - 2) * (m - 2);
}
}

int main()
{
    ios::sync_with_stdio(false);
    cin.tie(0);
    size_t n, m;
    cin >> n >> m;
    cout << count(n, m) << endl;
    return 0;
}
