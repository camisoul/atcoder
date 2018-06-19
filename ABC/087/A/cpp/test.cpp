#include <iostream>

using namespace std;

int main()
{
    ios::sync_with_stdio(false);
    cin.tie(0);
    
    int x, a, b;
    cin >> x >> a >> b;
    cout << (x - a) % b << endl;
    return 0;
}
