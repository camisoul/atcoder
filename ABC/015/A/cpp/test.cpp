#include <iostream>

using namespace std;

int main()
{
    string a, b;
    cin >> a >> b;
    cout << (a.size() > b.size() ? a : b) << endl; 

    return 0;
}
