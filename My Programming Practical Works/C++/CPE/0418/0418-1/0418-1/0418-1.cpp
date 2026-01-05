#include <iostream>
#include <vector>
using namespace std;
int main()
{
    int N;
    while (cin >> N) {
        vector <int> a;
        int temp;
        for (int i = 0; i < N; i++) {
            cin >> temp;
            a.push_back(temp);
        }
        int count = 0;
        for (int i = 0; i < N - 1; i++) {
            for (int j = 0; j < N - i - 1; j++) {
                if (a[j] > a[j + 1]) {
                    temp = a[j];
                    a[j] = a[j + 1];
                    a[j + 1] = temp;
                    count++;
                }
            }
        }
        cout << "Minimum exchange operations : " << count << endl;
    }
}

