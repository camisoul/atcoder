#include <iostream>
#include <algorithm>
#include <map>

using namespace std;

int main()
{
    size_t n;
    cin >> n;
    // キーに対応する値を持つマップ
    map<string,int> m;

    for (auto i = 0u; i < n; ++i) {
        string str;
        cin >> str;
        // []によるアクセスは、要素がない場合はデフォルト構築される
        // insert(make_pair<string,int>(str,0)) と同じ
        ++m[str];
    }

    auto j = max_element(begin(m), end(m), [](auto a, auto b) {
                         return a.second < b.second;
                         });
    cout << j->first << endl;

    return 0;
}
