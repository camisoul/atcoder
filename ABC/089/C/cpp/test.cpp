#include <iostream>
#include <map>

using namespace std;

int main()
{
    ios::sync_with_stdio(false);
    cin.tie(0);
    size_t n;
    cin >> n;
    map<char, size_t> names;
    for (size_t i = 0; i < n; ++i) {
        string s;
        cin >> s;
        if (s.find_first_of("MARCH") == 0) {
            ++names[s.front()];
        }
    }
    cout <<
          names['M'] * names['A'] * names['R']
        + names['M'] * names['A'] * names['C']
        + names['M'] * names['A'] * names['H']
        + names['M'] * names['R'] * names['C']
        + names['M'] * names['R'] * names['H']
        + names['M'] * names['C'] * names['H']
        + names['A'] * names['R'] * names['C']
        + names['A'] * names['R'] * names['H']
        + names['A'] * names['C'] * names['H']
        + names['R'] * names['C'] * names['H']
    << endl;
    return 0;
}
