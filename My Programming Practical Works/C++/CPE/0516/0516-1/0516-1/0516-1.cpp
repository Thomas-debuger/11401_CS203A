#include <iostream>
#include <cmath>
using namespace std;
int main()
{
    long long int n, m;
    while (cin >> n >> m) {
        long long int temp;
        for (int i = 1; temp < n && m > 1; i++) {
            temp = pow(m, i);
        }
        if (temp > n || m <= 1) {
            cout << "Boring!" << endl;
        }
        else if (temp == n) {
            while (temp > 0) {
                cout << temp;
                if (temp != 1) {
                    cout << " ";
                }
                else {
                    cout << endl;
                }
                temp /= m;
            }
        }
    }
}

