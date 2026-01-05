#include <iostream>
#include <cstring>
#include <vector>
using namespace::std;

// sum = addend + adder
vector<int> addition(vector<int> addend, vector<int> adder);

int main()
{
    char strA[251], strB[251];
    int T;
    cin >> T;
    for (int t = 0; t < T; ++t)
    {
        cin >> strA >> strB;

        int addendSize = strlen(strA);
        vector<int> addend(addendSize);
        for (int i = 0; i < addendSize; ++i)
            addend[i] = strA[addendSize - 1 - i] - '0';

        int adderSize = strlen(strB);
        vector<int> adder(adderSize);
        for (int i = 0; i < adderSize; ++i)
            adder[i] = strB[adderSize - 1 - i] - '0';

        vector<int> sum = addition(addend, adder);

        // 輸出結果
        for (int i = sum.size() - 1; i >= 0; i--)
            cout << sum[i];
        cout << endl;
    }
}

// sum = addend + adder
vector<int> addition(vector<int> addend, vector<int> adder)
{
    vector<int> sum;
    if (addend.size() > adder.size()) {
        sum = addend;
        for (int i = 0; i < adder.size(); i++) {
            sum[i] += adder[i];
        }
    }
    else if (adder.size() > addend.size()) {
        sum = adder;
        for (int i = 0; i < addend.size(); i++) {
            sum[i] += addend[i];
        }
    }
    else {
        sum = addend;
        for (int i = 0; i < adder.size(); i++) {
            sum[i] += adder[i];
        }
    }
    // 處理進位
    for (int i = 0; i < sum.size(); i++) {
        if (sum[i] >= 10) {
            sum[i] -= 10;
            // 確保 sum 有足夠的空間來處理進位
            if (i + 1 == sum.size()) {
                sum.push_back(0);
            }
            sum[i + 1]++;
        }
    }

    return sum;
}
