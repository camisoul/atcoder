#include <iostream>

using namespace std;

int main()
{
    ios::sync_with_stdio(false);
    cin.tie(0);
    size_t n;
    cin >> n;
    for (size_t i = 0; i < n; ++i) {
        char c;
        cin >> c;
        if (c == 'Y') {
            cout << "Four" << endl;
            return 0;
        }
    }
    cout << "Three" << endl;
    return 0;
}
