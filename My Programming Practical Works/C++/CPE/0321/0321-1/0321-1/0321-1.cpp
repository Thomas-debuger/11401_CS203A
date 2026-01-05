#include <iostream>
#include <string>
#include <vector>

using namespace std;

int main() {
    int T;
    cin >> T;
    cin.ignore();// 忽略數字後面的換行
    vector <int> freq(26, 0);// A ~ Z 出現次數，freq[0] 代表 A，freq[25] 代表 Z
    for (int i = 0; i < T; i++) {// 讀入 T 行文字
        //cin.ignore();
        string line;
        getline(cin, line);

        for (int j = 0; j < line.length(); j++) {
            if (isalpha(line[j])) {// 如果是英文字母
                char a = toupper(line[j]);// 轉成大寫
                freq[a - 'A']++;//  ch - 'A'用來把英文大寫字母轉成對應的「0～25 的數字」，字元（char）之間相減，會自動轉成整數相減。
            }
        }
    }

    // 把 A~Z 出現過的字母和次數存在 vector 中，方便排序
    vector <char> letters;// 存字母
    vector <int> counts;// 存對應的次數
    for (int j = 0; j < 26; j++) {
        if (freq[j] > 0) {
            letters.push_back('A' + j);
            counts.push_back(freq[j]);
        }
    }

    // 排序：次數多的排前面；次數一樣的話字母小的排前面
    int size = letters.size();
    for (int x = 0; x < size - 1; x++) {
    //氣泡排序需要進行多輪比較，每輪會將最大的（或最小的）元素「泡」到陣列的末端。
    //若陣列長度是 size，最多要比較 size - 1 輪，
    //因為當剩下一個元素時，它已經在正確位置，不用再比較了。
    //所以外層迴圈跑 i 從 0 到 size - 2（即 < size - 1）即可。
        for (int y = 0; y < size - 1 - x; y++) {
            //在每一輪（第 i 輪）內層迴圈比較相鄰元素時，最後面 i 個元素已經是排序好的，
            //不用再去比較了，
            //所以內層迴圈只需要跑到 size - 1 - i。
            if (counts[y] < counts[y + 1] || counts[y] == counts[y + 1] && letters[y] > letters[y + 1]) {
                int tempcounts = counts[y];
                counts[y] = counts[y + 1];
                counts[y + 1] = tempcounts;

                char templetters = letters[y];
                letters[y] = letters[y + 1];
                letters[y + 1] = templetters;
            }
            // 如果 counts[j] 小於 counts[j+1]，要交換（次數多排前面）
            // 如果次數一樣，字母較大的放後面（字母小的排前面）
        }
    }

    for (int k = 0; k < size; k++) {
        cout << letters[k] << " " << counts[k] << endl;
    }
    return 0;
}
