#include <iostream>
using namespace std;
int main()
{
    int n;
    while (true) {
        cin >> n;
        if (n == -1) {
            break;
        }
        long long int mfb = 1, mb1 = 0, mb2 = 0, fb1 = 0, fb2 = 0;
        long long int temp = 0;
        for (int i = 0; i < n; i++) {
            temp = mb1;
            for (int i = 0; i < temp; i++) {
                mb2++;
                fb2++;
                mb2--;
            }
            temp = fb1;
            for (int i = 0; i < temp; i++) {
                mb2++;
                fb2--;
            }
            temp = mfb;
            for (int i = 0; i < temp; i++) {
                mb2++;
            }
            mb1 += mb2;
            fb1 += fb2;
            mb2 = 0;
            fb2 = 0;
        }
        long long int sum = mb1 + fb1 + mfb;
        cout << mb1 << " " << sum << endl;
        mb1 = mb2 = fb1 = fb2 = 0;
    }
}

