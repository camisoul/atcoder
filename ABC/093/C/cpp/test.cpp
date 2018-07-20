#include <iostream>
#include <algorithm>

using namespace std;

// WA

int main()
{
    int a, b, c;
    cin >> a >> b >> c;
    int m = max({a, b, c});
    int t = (m - a) / 2 + (m - b) / 2 + (m - c) / 2;
    if ((a % 2 + b % 2 + c % 2) % 3 != 0) {
        t += m % 2 == 0 ? 2 : 1;
    }
    cout << t << endl;
    return 0;
}
