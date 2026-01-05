#include <iostream>
using namespace std;
class Matrix {
private:
    int mat[4][4]{};
    int arr[3]{};
public:
    void setMatrix()
    {
        for (int i = 0; i < 4; i++) {
            for (int j = 0; j < 4; j++) {
                cin >> mat[i][j];
            }
        }
    }
    void transposeMatrix()
    {
        for (int i = 0; i < 1; i++) {
            for (int j = 1; j < 4; j++) {
                arr[j - 1] = mat[i][j];
                mat[i][j] = mat[j][i];
                mat[j][i] = arr[j - 1];
            }
        }
        for (int i = 1; i < 2; i++) {
            for (int j = 2; j < 4; j++) {
                arr[j - 2] = mat[i][j];
                mat[i][j] = mat[j][i];
                mat[j][i] = arr[j - 2];
            }
        }
        for (int i = 2; i < 3; i++) {
            for (int j = 3; j < 4; j++) {
                arr[j - 3] = mat[i][j];
                mat[i][j] = mat[j][i];
                mat[j][i] = arr[j - 3];
            }
        }
    }
    void displayMatrix()
    {
        for (int i = 0; i < 4; i++) {
            for (int j = 0; j < 4; j++) {
                cout << mat[i][j] << " ";
            }
            cout << endl;
        }
    }
};
int main()
{
    Matrix Matrix;
    Matrix.setMatrix();
    Matrix.transposeMatrix();
    Matrix.displayMatrix();
}
/*
    1 2 3 4         1 5 9 13
    5 6 7 8         2 6 10 14
    9 10 11 12      3 7 11 15
    13 14 15 16     4 8 12 16
*/
