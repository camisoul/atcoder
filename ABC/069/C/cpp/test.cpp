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
    vector<int> v(n);
    for (size_t i = 0; i < n; ++i) {
        int a;
        cin >> a;
        v[i] = a;
    }
    auto p1 = partition(v.begin(), v.end(), [](int x) { return x % 2 == 1; });
    auto p4 = partition(p1, v.end(), [](int x) { return x % 4 == 0; });

    auto b1 = distance(v.begin(), p1);
    auto b4 = distance(p1, p4);
    auto b2 = distance(v.begin(), v.end()) - b1 - b4;

    if (b2 == 0) {
        cout << (b1 <= b4 + 1 ? "Yes" : "No") << endl;
    } else {
        cout << (b1 <= b4 ? "Yes" : "No") << endl;
    }
    return 0;
}
