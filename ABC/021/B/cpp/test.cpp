#include <iostream>
#include <unordered_set>

using namespace std;

int main()
{
    size_t n;
    size_t a, b;
    size_t k;
    unordered_set<size_t> ps;

    cin >> n >> a >> b >> k;
    ps.insert(a);
    ps.insert(b);

    for (auto i = 0u; i < k; ++i) {
        size_t p;
        cin >> p;
        ps.insert(p);
    }

    cout << (ps.size() == k + 2 ? "YES" : "NO") << endl;

    return 0;
}
