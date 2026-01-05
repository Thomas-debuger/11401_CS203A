#include <iostream>
using namespace std;
int main()
{
    int a, b, c, d, L;
    int count = 0;
    cin >> a >> b >> c >> d >> L;
    while (a || b || c || d || L) {
        for (int i = 0; i <= L; i++) {
            if ((a * i * i + b * i + c) % d == 0 ) {
                count++;
            }
        }
        cout << count << endl;
        count = 0;
        cin >> a >> b >> c >> d >> L;
    }
    return 0;
}

