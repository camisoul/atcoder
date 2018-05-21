#include <iostream>
#include <array>

using namespace std;

int main()
{
    size_t n;
    cin >> n;
    array<int, 4> a = { 0, 0, 0, 1 };
    if (n < 3) {
        cout << 0 << endl;
    } else {
        for (auto i = 4u; i <= n; ++i) {
            int a1 = a[1];
            int a2 = a[2];
            int a3 = a[3];
            a[3] = (a1 + a2 + a3) % 10007;
            a[2] = a3;
            a[1] = a2;
            a[0] = a1;
        }
        cout << a[3] << endl;
    }

    return 0;
}
