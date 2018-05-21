#include <iostream>
#include <array>
#include <algorithm>

using namespace std;

int main()
{
    array<string, 4> board;
    for (auto &&s: board) {
        getline(cin, s);
        reverse(begin(s), end(s));
    }
    reverse(begin(board), end(board));
    for (auto &&s: board) {
        cout << s << endl;
    }

    return 0;
}
