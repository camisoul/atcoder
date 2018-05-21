#include <iostream>

using namespace std;

// C++17ではgcdとlcmが実装されている
// 競プロではC++14までなので自分で実装

template <typename T>
T gcd(T m, T n)
{
    if (n == 0) {
        return m;
    }
    return gcd(n, m % n);
}

template <typename T>
T lcm(T m, T n)
{
    return m / gcd(m, n) * n;
}

int main()
{
    ios::sync_with_stdio(false);
    cin.tie(0);
    size_t n;
    uint_fast64_t l = 1;
    cin >> n;
    for (auto i = 0u; i < n; ++i) {
        uint_fast64_t t;
        cin >> t;
        l = lcm(l, t);
    }
    cout << l << endl;
    return 0;
}
