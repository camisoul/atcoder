#include <iostream>

using namespace std;

int main()
{
    ios::sync_with_stdio(false);
    cin.tie(0);

    string s;
    string a = "abcdefghijklmnopqrstuvwxyz";
    getline(cin, s);
    for (auto &c: a) {
        auto p = s.find(c);
        if (p == basic_string<string>::npos) {
            cout << c << endl;
            return 0;
        }
    }
    cout << "None" << endl;
    return 0;
}
