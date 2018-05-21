#include <iostream>

using namespace std;

int main()
{
    int a, b;
    cin >> a >> b;

    // absとminは標準装備
    int c = abs(b - a);
    cout << min(c, 10 - c) << endl;

    return 0;
}
