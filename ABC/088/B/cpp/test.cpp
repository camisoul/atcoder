#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

int main()
{
    ios::sync_with_stdio(false);
    cin.tie(0);
    size_t n;
    cin >> n;
    vector<int> a(n);
    for (auto &&i : a) {
        cin >> i;
    }
    sort(rbegin(a), rend(a));

    int x = 0;
    int y = 0;
    for (size_t i = 0; i < n; i += 2) {
        x += a[i];
        if (i + 1 < n) {
            y += a[i + 1];
        }
    }
    cout << x - y << endl;

    return 0;
}
