#include <iostream>
#include <vector>
using namespace std;

int main()
{
    int m, n, p;
    cin >> m >> n >> p;

    // 檢查矩陣維度是否符合乘法規則
    if (n <= 0 || m <= 0 || p <= 0) {
        cout << "Invalid matrix dimensions" << endl;
        return 1;
    }

    // 動態建立矩陣
    vector <vector<int>> matrixA(m, vector<int>(n));
    vector <vector<int>> matrixB(n, vector<int>(p));
    vector <vector<int>> matrixC(m, vector<int>(p));  // 初始化為 0


    // 輸入矩陣 A
    for (int i = 0; i < m; i++) {
        for (int j = 0; j < n; j++) {
            cin >> matrixA[i][j];
        }
    }

    // 輸入矩陣 B
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < p; j++) {
            cin >> matrixB[i][j];
        }
    }

    // 計算矩陣 C = A * B
    for (int i = 0; i < m; i++) {
        for (int j = 0; j < p; j++) {
            for (int k = 0; k < n; k++) {
                matrixC[i][j] += matrixA[i][k] * matrixB[k][j];
            }
        }
    }

    // 輸出矩陣 C
    for (int i = 0; i < m; i++) {
        for (int j = 0; j < p; j++) {
            cout << matrixC[i][j] << " ";
        }
        cout << endl;
    }

    return 0;
}