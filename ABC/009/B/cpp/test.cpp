#include <iostream>
#include <set>

using namespace std;

int main()
{
    size_t n;
    set<int> s;

    cin >> n;
    for (auto i = 0u; i < n; ++i) {
        int a;
        cin >> a;
        s.insert(a);
    }

    auto j = end(s);
    --j;
    --j;

    cout << *j << endl;

    return 0;
}
