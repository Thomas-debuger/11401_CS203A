#include <iostream>
using namespace std;
int main()
{
    int T, n;
    cin >> T;
    char N, e;
    for (int Case = 1; Case <= T; Case++) {
        cin >> N >> e;
        cin >> n;

        long long int** a = new long long int* [n];//pointer:一個指標指向陣列，pointer to pointer:一個指標指向一群指標(n個)，一群指標裡的每個指標指向一個陣列
        for (int i = 0; i < n; i++) {
            a[i] = new long long int[n];//一群指標裡的每個指標指向一個陣列
        }

        bool check = true;
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                cin >> a[i][j];
                if (a[i][j] < 0) {
                    check = false;
                    break;
                }
            }
        }
        if (!check) {
            cout << "Test #" << Case << ": " << "Non-symmetric." << endl;
            continue;
        }

        for (int i = 0; i <= n / 2; i++) {
            for (int j = 0; j < n; j++) {
                if (a[i][j] != a[n - 1 - i][n - 1 - j]) {
                    check = false;
                    break;
                }
            }
        }
        if (!check) {
            cout << "Test #" << Case << ": " << "Non-symmetric." << endl;
        }
        else {
            cout << "Test #" << Case << ": " << "Symmetric." << endl;
        }
    }
}

