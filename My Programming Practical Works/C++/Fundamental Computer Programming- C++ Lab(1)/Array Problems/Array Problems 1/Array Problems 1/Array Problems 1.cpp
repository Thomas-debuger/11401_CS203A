#include <iostream>
using namespace std;
int main()
{
    int matrixA[3][3];
    int matrixB[3][3];
    int matrixC[3][3];
    int number;
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            while (true) {
                cin >> number;
                if (number < 100) {
                    matrixA[i][j] = number;
                    break;
                }
            }
        }
    }
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            while (true) {
                cin >> number;
                if (number < 100) {
                    matrixB[i][j] = number;
                    break;
                }
            }
        }
    }
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            matrixC[i][j] = matrixA[i][j] + matrixB[i][j];
        }
    }
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            cout << matrixC[i][j];
            cout << " ";
        }
        cout << endl;
    }
}
