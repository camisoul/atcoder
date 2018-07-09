#include <iostream>

using namespace std;

int main()
{
    ios::sync_with_stdio(false);
    cin.tie(0);
    int n, a;
    cin >> n >> a;
    cout << (a >= n % 500 ? "Yes" : "No") << endl;
    return 0;
}
