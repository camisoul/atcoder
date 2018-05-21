#include <iostream>
#include <iomanip>
#include <array>
#include <numeric>

using namespace std;

constexpr int N = 2400 + 2;

int main()
{
    array<int,N> data = {0};

    size_t n;
    cin >> n;

    for (auto i = 0u; i < n; ++i) {
        char c;
        size_t s, e;
        cin >> s >> c >> e;
        s = s / 5 * 5;
        e = (e + 5 - 1) / 5 * 5;
        if (e % 100 == 60) {
            e += 40;
        }
        ++data[s];
        --data[e + 1];
    }

    partial_sum(begin(data), end(data), begin(data));

    bool rain = false;
    for (auto i = 0u; i < N; ++i) {
        if (!rain && data[i] > 0) {
            cout << setfill('0') << setw(4) << i << '-';
            rain = true;
        }
        if (rain && data[i] == 0) {
            cout << setfill('0') << setw(4) << i - 1 << endl;
            rain = false;
        }
    }

    return 0;
}
