#include <iostream>
#include <array>
#include <cmath>

using namespace std;

int main()
{
    array<string, 17> degs = {
        "N", "NNE", "NE", "ENE", "E", "ESE", "SE", "SSE",
        "S", "SSW", "SW", "WSW", "W", "WNW", "NW", "NNW", "N"
    };
    array<double, 13> winds = {
        2,15,33,54,79,107,138,171,207,244,284,326,2000
    };

    size_t deg;
    double dis;

    cin >> deg >> dis;
    dis = floor(dis * 10 / 60.0 + 0.5);

    string dir = degs[(deg * 10 + 1125) / 2250];
    long int w = distance(begin(winds), lower_bound(begin(winds), end(winds), dis));

    cout << (w == 0 ? "C" : dir) << " " << w << endl;

    return 0;
}
