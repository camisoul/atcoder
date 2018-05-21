#include <iostream>
#include <array>
#include <algorithm>

using namespace std;

int main()
{
    int n;
    cin >> n;
    array<int, 7> as = {1, 2, 4, 8, 16, 32, 64};
    auto it = upper_bound(as.begin(), as.end(), n);
    cout << *(--it) << endl;
    return 0;
}
