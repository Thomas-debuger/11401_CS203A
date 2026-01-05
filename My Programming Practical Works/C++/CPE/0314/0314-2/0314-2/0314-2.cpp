#include <iostream>
#include <string>
#include <sstream>
#include <vector>
using namespace std;
int main() {
	int x;
	int temp;
	string s;
	while (cin >> x) {
		cin.ignore();// 清掉 x 後面的換行
		getline(cin, s); // 讀入多項式係數的一整行

		stringstream ss(s);//stringstream ss(line); 是 C++ 中常見的一行程式碼，主要用來把字串當作輸入資料來處理，就像用 cin 處理鍵盤輸入一樣。
		vector <int> coef;
		while (ss >> temp) {
			coef.push_back(temp);
		}
		int sum = 0;
		int power = pow(x, coef.size() - 2);
		for (int i = 0; i < coef.size() - 1; i++) {
			sum += coef[i] * (coef.size() - 1 - i) * power;
			power /= x;
		}
		cout << sum << endl;
	}
	return 0;
}