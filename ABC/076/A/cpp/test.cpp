#include <iostream>

using namespace std;

int main()
{
    ios::sync_with_stdio(false);
    cin.tie(0);
    int r, g;
    cin >> r >> g;
    cout << r + (g - r) * 2 << endl;
    return 0;
}
