#include <iostream>
#include <array>

using namespace std;
using Table = array<array<int, 3>, 3>;

bool check_value(Table &c, size_t i, size_t j)
{
    for (int a = 0; a <= 100; ++a) {
        for (int b = 0; b <= 100; ++b) {
            if (c[i][j] == a + b) {
                return true;
            }
        }
    }
    return false;
}

bool check_all(Table &c)
{
    for (size_t j = 0; j < 3; ++j) {
        for (size_t i = 0; i < 3; ++i) {
            if (!check_value(c, i, j)) {
                return false;
            }
        }
    }
    return true;
}

int main()
{
    ios::sync_with_stdio(false);
    cin.tie(0);
    Table c;
    for (auto &&l : c) {
        for (auto &&d : l) {
            cin >> d;
        }
    }
    cout << (check_all(c) ? "Yes" : "No") << endl;

    return 0;
}
