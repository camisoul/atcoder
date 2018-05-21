#include <iostream>

using namespace std;

constexpr auto N = 2025;

int main()
{
    int n;
    cin >> n;
    for (auto i = 1; i <= 9; ++i) {
        auto j = N - n;
        if (j % i == 0 && j / i <= 9) {
            cout << i << " x " << j / i << endl;
        }
    }

    return 0;
}
