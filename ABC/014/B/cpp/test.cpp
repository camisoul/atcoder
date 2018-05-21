#include <iostream>
#include <bitset>

using namespace std;

constexpr size_t N = 20;

int main()
{
    size_t n;
    // bitsetのコンストラクタに渡す値の型
    unsigned long long x;

    cin >> n >> x;

    // bitset
    bitset<N> bs(x);
    int total = 0;

    // 任意のビットが立っているときだけ値を加算
    for (auto i = 0u; i < n; ++i) {
        int a;
        cin >> a;
        total += bs[i] * a;
    }
    cout << total << endl;

    return 0;
}
