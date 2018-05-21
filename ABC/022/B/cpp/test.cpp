#include <iostream>
#include <unordered_set>

using namespace std;

int main()
{
    size_t n;
    cin >> n;

    unordered_set<size_t> us;
    for (auto i = 0u; i < n; ++i) {
        size_t a;
        cin >> a;
        us.insert(a);
    }
    cout << n - us.size() << endl;

    return 0;
}
