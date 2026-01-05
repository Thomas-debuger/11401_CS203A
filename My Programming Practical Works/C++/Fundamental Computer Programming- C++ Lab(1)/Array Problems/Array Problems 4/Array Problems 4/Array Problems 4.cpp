#include <iostream>
using namespace std;
int main()
{
    int matrix[5][5];
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
            cin >> matrix[i][j];
        }
    }
    int sum1[5]{}, sum2[5]{};
    int sum3 = 0;
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
            sum1[i] += matrix[i][j];
        }
    }
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
            sum2[i] += matrix[j][i];
        }
    }
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
            if (i == 0 || i == 4 || j == 0 || j == 4) { //
                sum3 += matrix[i][j];
            }
        }
    }
    for (int i = 0; i < 5; i++) {
        cout << sum1[i] << " ";
    }
    cout << endl;
    for (int i = 0; i < 5; i++) {
        cout << sum2[i] << " ";
    }
    cout << endl;
    cout << sum3;
}