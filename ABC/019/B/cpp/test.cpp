#include <iostream>

using namespace std;

int main()
{
    string str, res;
    cin >> str;

    for (size_t i = 0, max = str.size(); i < max; ++i) {
        char c = str[i];
        int count = 1;
        while (i + 1 < max && str[i + 1] == c) {
            ++count;
            ++i;
        }
        res += c;
        res += to_string(count);
    }
    cout << res << endl;

    return 0;
}
