#include <iostream>

using namespace std;

int main()
{
    size_t n;
    int s, t, w;

    cin >> n >> s >> t >> w;

    size_t count = 0;
    if (s <= w && w <= t) {
        ++count;
    }
    for (auto i = 0u; i < n - 1; ++i) {
        int a;
        cin >> a;
        w += a;
        if (s <= w && w <= t) {
            ++count;
        }
    }
    cout << count << endl;

    return 0;
}
