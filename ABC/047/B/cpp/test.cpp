#include <iostream>
#include <cassert>

using namespace std;

int main()
{
    int w, h, n;
    cin >> w >> h >> n;

    bool rect[w+1][h+1];
    for (auto i = 1; i <= w; ++i) {
        for (auto j = 1; j <= h; ++j) {
            rect[i][j] = false;
        }
    }

    int x, y, a;
    for (auto i = 0; i < n; ++i) {
        cin >> x >> y >> a;
        switch (a) {
            case 1:
              for (auto j = 1; j <= x; ++j) {
                  for (auto k = 1; k <= h; ++k) {
                    rect[j][k] = true;
                  }
              }
              break;
            case 2:
              for (auto j = x + 1; j <= w; ++j) {
                  for (auto k = 1; k <= h; ++k) {
                    rect[j][k] = true;
                  }
              }
              break;
            case 3:
              for (auto j = 1; j <= w; ++j) {
                  for (auto k = 1; k <= y; ++k) {
                    rect[j][k] = true;
                  }
              }
              break;
            case 4:
              for (auto j = 1; j <= w; ++j) {
                  for (auto k = y + 1; k <= h; ++k) {
                    rect[j][k] = true;
                  }
              }
              break;
            default:
              assert(false);
        }
    }
    int total = 0;
    for (auto i = 1; i <= w; ++i) {
        for (auto j = 1; j <= h; ++j) {
            if (rect[i][j] == false) {
                ++total;
            }
        }
    }
    cout << total << endl;

    return 0;
}
