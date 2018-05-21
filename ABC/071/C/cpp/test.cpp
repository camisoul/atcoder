#include <iostream>
#include <vector>
#include <algorithm>
#include <functional>
#include <numeric>

using namespace std;

int main()
{
    ios::sync_with_stdio(false);
    cin.tie(0);

    size_t n;
    cin >> n;
    vector<uint_fast64_t> v(n);
    for_each(v.begin(), v.end(), [](uint_fast64_t &c) { cin >> c; });
    sort(v.begin(), v.end(), greater<uint_fast64_t>());
    vector<uint_fast64_t> l;

    uint_fast64_t p = 0;
    for (auto &&a: v) {
        if (p == a) {
            l.push_back(a);
            if (l.size() == 2) {
                break;
            }
            p = 0;
        } else {
            p = a;
        }
    }
    if (l.size() == 2) {
        cout << l[0] * l[1] << endl;
    } else {
        cout << 0 << endl;
    }
    return 0;
}
