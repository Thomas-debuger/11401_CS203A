#include <iostream>
using namespace std;

string compute(int n)
{
    if (n == 0) {
        return "0";
    }
    string res = "";
    while (n != 0) {
        int r = n % -2;
        n /= -2;
        if (r < 0) {
            r += 2;
            n += 1;
        }
        res = char(r + '0') + res;
    }
    return res;
}

int main()
{
    int T;
    cin >> T;
    for (int i = 0; i < T; i++) {
        int n;
        cin >> n;
        cout << "Case #" << i << ": " << compute(n) << endl;
    }
}

