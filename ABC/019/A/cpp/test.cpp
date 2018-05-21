#include <iostream>
#include <array>
#include <algorithm>

using namespace std;

int main()
{
    array<int,3> n;
    cin >> n[0] >> n[1] >> n[2];

    sort(begin(n), end(n));
    cout << n[1] << endl;

    return 0;
}
