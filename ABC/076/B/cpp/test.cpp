#include <iostream>

using namespace std;

int main()
{
    ios::sync_with_stdio(false);
    cin.tie(0);
    int n, k, t;
    cin >> n >> k;
    t = 1;
    for (int a = 0; a < n; ++a) {
        t += min(t, k);
    }
    cout << t << endl;
    return 0;
}
