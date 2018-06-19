#include <iostream>

using namespace std;

int main()
{
    ios::sync_with_stdio(false);
    cin.tie(0);

    int a, b, c, x;
    int total = 0;
    cin >> a >> b >> c >> x;
    
    for (int i = 0; i <= a; ++i) {
        for (int j = 0; j <= b; ++j) {
            for (int k = 0; k <= c; ++k) {
                if (x == 500 * i + 100 * j + 50 * k) {
                    ++total;
                }
            }
        }
    }
    cout << total << endl;

    return 0;
}
