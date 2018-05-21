#include <iostream>

using namespace std;

int main()
{
    string s;
    getline(cin, s);
    cout << (s.front() == s.back() ? "Yes" : "No") << endl;
    return 0;
}
