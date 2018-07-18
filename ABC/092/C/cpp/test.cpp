#include <iostream>
#include <vector>
#include <numeric>
#include <iterator>
#include <istream>

using namespace std;

// C++らしく書いてみた

int main()
{
    ios::sync_with_stdio(false);
    cin.tie(0);
    size_t n;
    cin >> n;
    // データ領域の準備
    vector<int> a;
    a.reserve(n + 2);
    // 標準入力からintとしてデータを読み取り、vectorに追記する
    a.push_back(0);
    copy(istream_iterator<int>(cin), istream_iterator<int>(), back_inserter(a));
    a.push_back(0);
    vector<int> c(a.size());
    // 階差の絶対値を計算
    adjacent_difference(begin(a), end(a), begin(c), [](int x, int y){
        return abs(x - y);
    });
    auto total = accumulate(begin(c), end(c), 0);
    for (size_t i = 1; i < a.size() - 1; ++i) {
        cout << total + abs(a[i - 1] - a[i + 1]) - (c[i] + c[i + 1]) << endl;
    }
    return 0;
}
