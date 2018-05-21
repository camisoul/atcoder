#include <iostream>
#include <algorithm>

using namespace std;

int main()
{
    string str;
    cin >> str;

    // 要素に関数をマッピングするのはtransform
    // toupperはctypesの関数と名前が被るので名前空間の指定が必要
    transform(begin(str), end(str), begin(str), ::tolower);
    transform(begin(str), begin(str) + 1, begin(str), ::toupper);

    cout << str << endl;

    return 0;
}
