#include <iostream>
#include <algorithm>
using namespace std;
int main() {
    int T;
    cin >> T;
    for (int i = 0; i < T; i++) {
        int count = 0;
        int a[50]{};
        while (cin >> a[count] && a[count]) {
            count++;
        }
        sort(a, a + count, std::greater<int>());//a代表begin()起始位置(myData.myFirst)，a+n代表end()結束位置(myData.myLast)，a是陣列的起始位置a[0]，a+n是結束位置a[n-1](不包含a[n]本身)
        //std::greater<int>()表示降冪，即由大到小
        long long int result = 1, sum = 0;
        bool exceed = false;
        for (int j = 0; j < count; j++) {//算指數總和
            result = 1;
            for (int k = 0; k < j + 1; k++) {//算單一指數
                result *= a[j];
                if (sum + 2 * result > 5000000) {//防TLE，算到一半發現>5000000時直接跳出
                    exceed = true;
                    break;
                }
            }
            if (exceed) {
                break;
            }
            sum += 2 * result;
        }
        if (exceed) {
            cout << "Too expensive" << endl;
        }
        else {
            cout << sum << endl;
        }
    }
    return 0;
}
