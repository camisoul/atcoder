#include <iostream>
#include <algorithm>

using namespace std;

int main()
{
    string s;
    size_t n;

    cin >> s;
    cin >> n;

    for (auto i = 0u; i < n; ++i) {
        long l, r;
        cin >> l >> r;
        reverse(begin(s) + l - 1, begin(s) + r);
    }
    cout << s << endl;

    return 0;
}
