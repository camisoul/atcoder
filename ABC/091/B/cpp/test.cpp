#include <iostream>
#include <map>
#include <algorithm>

using namespace std;

int main()
{
    ios::sync_with_stdio(false);
    cin.tie(0);
    size_t           n, m;
    map<string, int> data;
    cin >> n;
    for (auto i = 0u; i < n; ++i) {
        string s;
        cin >> s;
        ++data[s];
    }
    cin >> m;
    for (auto i = 0u; i < m; ++i) {
        string s;
        cin >> s;
        --data[s];
    }
    auto it = max_element(cbegin(data), cend(data), [](auto a, auto b){
        return a.second < b.second;
    });
    cout << (it->second <= 0 ? 0 : it->second) << endl;
    return 0;
}
