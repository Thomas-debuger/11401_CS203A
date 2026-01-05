#include <iostream>
#include <string>
using namespace std;
bool prime[2001];
void buildprime()
{
    prime[0] = false;
    prime[1] = false;
    for (int i = 2; i <= 2000; i++) {
        prime[i] = true;
    }
    for (int i = 2; i * i <= 2000; i++) {//從2檢查至根號2000為止
        for (int j = i * i; j <= 2000; j+=i) {
            prime[j] = false;
        }
    }
}
int main()
{
    buildprime();
    int T;
    cin >> T;
    cin.ignore();
    //若輸入3\n，cin >> T只讀取了3，\n還留在緩衝區裡，接著getline(cin, s)會立刻讀到\n，所以s會變成一個空字串，因此要用cin.ignore()把\n忽略掉
    for (int i = 1; i <= T; i++) {
        string s;
        getline(cin, s);//cin >> s遇到空白會停止，getline(cin,s)不會
        int count[128]{};//ACSII碼共有127個
        for (int j = 0; j < s.length(); j++) {
            count[s[j]]++;//某字母出現次數
        }
        bool test = false;
        cout << "Case " << i << ": ";
        for (int k = 0; k < 127; k++) {
            if (prime[count[k]]) {//若某字母出現次數為質數則印出
                cout << char(k);
                test = true;
            }
        }
        if (!test) {
            cout << "empty";
        }
        cout << endl;
    }
}


