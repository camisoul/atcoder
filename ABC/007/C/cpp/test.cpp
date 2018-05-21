#include <iostream>
#include <vector>
#include <cassert>
#include <limits>

using namespace std;

static constexpr int kWall = -1;
static constexpr int kMax = numeric_limits<int>::max();

class Maze {
    size_t m_width;
    size_t m_height;
    vector<int> m_data;

public:
    Maze(size_t, size_t);
    size_t get_width() const { return m_width; }
    size_t get_height() const { return m_height; }
    int get_data(size_t x, size_t y) const { return m_data[y * m_width + x]; }
    void set_data(size_t x, size_t y, int value) { m_data[y * m_width + x] = value; }
    void write_distance(size_t, size_t, int);
};

Maze::Maze(size_t w, size_t h)
    : m_width(w), m_height(h), m_data(w * h, kWall)
{
}

void Maze::write_distance(size_t x, size_t y, int n)
{
    if (x >= m_width || y >= m_height) {
        return;
    }
    int tile = get_data(x, y);
    if (tile <= n) {
        return;
    }
    set_data(x, y, n);
    write_distance(x + 0, y - 1, n + 1);
    write_distance(x + 1, y + 0, n + 1);
    write_distance(x + 0, y + 1, n + 1);
    write_distance(x - 1, y + 0, n + 1);
}

int main()
{
    size_t r, c;
    size_t sx, sy;
    size_t gx, gy;

    cin >> r >> c;
    cin >> sx >> sy;
    cin >> gx >> gy;

    Maze maze(r, c);

    for (auto i = 0u; i < r; ++i) {
        for (auto j = 0u; j < c; ++j) {
            char v;
            cin >> v;
            switch (v) {
                case '#':
                    maze.set_data(i, j, kWall);
                    break;
                case '.':
                    maze.set_data(i, j, kMax);
                    break;
                default:
                    assert(false);
            }
        }
    }
    maze.write_distance(sx - 1, sy - 1, 0);
    cout << maze.get_data(gx - 1, gy - 1) << endl;

    return 0;
}

