#include <iostream>
#include <algorithm>

using namespace std;

int main()
{
    string s;
    cin >> s;
    cout << (is_permutation(begin(s), end(s), "abc") ? "Yes" : "No") << endl;
    return 0;
}
