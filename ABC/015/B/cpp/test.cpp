#include <iostream>
#include <cmath>

using namespace std;

int main()
{
    size_t n;
    cin >> n;
    size_t count = 0;
    int total = 0;

    for (auto i = 0u; i < n; ++i) {
        int a;
        cin >> a;
        if (a > 0) {
            total += a;
            ++count;
        }
    }

    cout << ceil(total / static_cast<double>(count)) << endl;

    return 0;
}
