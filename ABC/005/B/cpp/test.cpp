#include <iostream>
#include <valarray>

using namespace std;

int main()
{
    size_t n;
    cin >> n;
    // valarrayはminが標準実装
    valarray<size_t> v(n);
    for (auto &&t: v) {
        cin >> t;
    }
    cout << v.min() << endl;

    return 0;
}
