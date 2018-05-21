#include <iostream>

using namespace std;

int main()
{
    string s;
    getline(cin, s);
    cout << s.front() << s.size() - 2 << s.back() << endl;
    return 0;
}
