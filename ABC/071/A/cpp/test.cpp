#include <iostream>

using namespace std;

int main()
{
    ios::sync_with_stdio(false);
    cin.tie(0);
    int_fast16_t x, a, b;
    cin >> x >> a >> b;
    cout << (abs(a - x) < abs(b - x) ? "A" : "B") << endl;
    return 0;
}
