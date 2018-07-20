#include <iostream>

using namespace std;

int main()
{
    ios::sync_with_stdio(false);
    cin.tie(0);
    int a, b, k;
    cin >> a >> b >> k;

    if (a + k - 1 < b - k + 1) {
        for (int i = a; i <= a + k - 1; ++i) {
            cout << i << endl;
        }
        for (int i = b - k + 1; i <= b; ++i) {
            cout << i << endl;
        }
    } else {
        for (int i = a; i <= b; ++i) {
            cout << i << endl;
        }
    }
    return 0;
}
