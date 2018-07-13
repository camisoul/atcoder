#include <iostream>

using namespace std;

int main()
{
    ios::sync_with_stdio(false);
    cin.tie(0);
    size_t a, b, t = 0;
    cin >> a >> b;
    for (size_t i = a; i <= b; ++i) {
        if (i / 10000 == i % 10 && (i % 10000) / 1000 == (i % 100) / 10) {
            ++t;
        }
    }
    cout << t << endl;
    return 0;
}
