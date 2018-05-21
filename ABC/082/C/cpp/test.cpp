#include <iostream>
#include <unordered_map>
#include <algorithm>

using namespace std;

int main()
{
    ios::sync_with_stdio(false);
    cin.tie(0);
    size_t n;
    cin >> n;
    unordered_map<int, int> mp(n);
    for (size_t i = 0; i < n; ++i) {
        int a;
        cin >> a;
        ++mp[a];
    }
    int total = 0;
    for_each(mp.cbegin(), mp.cend(), [&total](auto p)
    {
        if (p.first < p.second) {
            total += p.second - p.first;
        } else if (p.first > p.second) {
            total += p.second;
        }
    }
             );
    cout << total << endl;
    return 0;
}
