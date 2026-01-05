#include <iostream>
#include <vector>
using namespace std;
int main()
{
    int num = 0;
    int count = 0;
    vector <int> a;
    while (cin >> num && num) {//num=0的話，條件為false
        a.clear();
        count = 0;
        while (num) {
            a.push_back(num % 2);
            if (num % 2) {
                count++;
            }
            num /= 2;
        }
        cout << "The parity of ";
        for (int i = a.size() - 1; i >= 0; i--) {
            cout << a[i];
        }
        cout << " is " << count << " (mod 2)." << endl;
    }
    return 0;
}

