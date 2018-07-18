#include <iostream>

using namespace std;

int main()
{
    ios::sync_with_stdio(false);
    cin.tie(0);
    size_t n, d, x;

    cin >> n >> d >> x;
    for (auto i = 0u; i < n; ++i) {
        size_t a;
        cin >> a;
        x += (d - 1) / a + 1;
    }
    cout << x << endl;

    return 0;
}
