#include <iostream>
#include <cmath>
using namespace std;
int main()
{
    int x, y;
    while (cin >> x >> y) {
        int count = 0;
        for (int i = x; i <= y; i++) {
            int temp = sqrt(i);
            if (temp * temp == i) {
                count++;
            }
        }
        cout << count << endl;
    }
}

