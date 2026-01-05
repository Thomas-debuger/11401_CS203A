#include <iostream>
using namespace std;
int main()
{
    int n, m, count = 0, carry = 0;
    cin >> n >> m;
    while (n != 0 || m != 0) {
        count = 0;
        carry = 0;
        while (n != 0 || m != 0) {
            if (n % 10 + m % 10 + carry >= 10) {
                count++;
                carry = 1;
            }
            else {
                carry = 0;//
            }
            n /= 10;
            m /= 10;
        }
        if (count == 0) {
            cout << "No carry operation." << endl;
        }
        else if (count == 1) {
            cout << count << " carry operation." << endl;
        }
        else {
            cout << count << " carry operations." << endl;
        }
        cin >> n >> m;
    }
    return 0;
}

