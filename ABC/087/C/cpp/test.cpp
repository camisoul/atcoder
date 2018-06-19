#include <iostream>
#include <vector>
#include <algorithm>
#include <numeric>

using namespace std;

int main()
{
    ios::sync_with_stdio(false);
    cin.tie(0);

    size_t n;
    cin >> n;
    vector<int> a1, a2;
    for (size_t i = 0; i < n; ++i) {
        int a;
        cin >> a;
        a1.push_back(a);
    }
    for (size_t i = 0; i < n; ++i) {
        int a;
        cin >> a;
        a2.push_back(a);
    }

    vector<int> r1(n), r2(n), r3(n);
    partial_sum(cbegin(a1), cend(a1), begin(r1));
    partial_sum(crbegin(a2), crend(a2), rbegin(r2));
    transform(cbegin(r1), cend(r1), cbegin(r2), begin(r3), plus<int>());
    cout << *max_element(cbegin(r3), cend(r3)) << endl;

    return 0;
}
