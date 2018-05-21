#include <iostream>
#include <vector>

using namespace std;

int main()
{
    // IO読み取り高速化のおまじない
    ios::sync_with_stdio(false);
    cin.tie(0);

    size_t n, m;
    cin >> n >> m;
    vector<bool> as(n);
    vector<bool> bs(n);
    for (size_t i = 0; i < m; ++i) {
        size_t a, b;
        cin >> a >> b;
        if (a == 1) {
            as[b - 1] = true;
        } else if (b == n) {
            bs[a - 1] = true;
        }
    }
    for (size_t i = 1; i < n; ++i) {
        if (as[i] && bs[i]) {
            cout << "POSSIBLE" << endl;
            return 0;
        }
    }
    cout << "IMPOSSIBLE" << endl;
    return 0;
}
