#include <iostream>

using namespace std;

int main()
{
    ios::sync_with_stdio(false);
    cin.tie(0);
    char c[3][3];
    for (auto i = 0u; i < 3; ++i) {
        scanf("%s", c[i]);
    }
    for (auto i = 0u; i < 3; ++i) {
        cout << c[i][i];
    }
    cout << endl;
    return 0;
}
