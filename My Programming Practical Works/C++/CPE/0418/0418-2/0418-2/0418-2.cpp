#include <iostream>
using namespace std;

int main() {
	int T;
	cin >> T;
	for (int Case = 0; Case < T; Case++) {
		int c, r;
		cin >> c >> r;
		char w[2][105];
		int flag;
		cin >> w[0];
		int ans = c * r;
		flag = 1;
		for (int i = 0; i < r - 1; i++) {
			cin >> w[flag];
			for (int j = 0; j < c; j++) {
				int k;
				for (k = 0; w[!flag][j + k] != '\0'; k++) {
					if (w[flag][k] != w[!flag][j + k]) {
						break;
					}
				}
				if (w[!flag][j + k] == '\0') {
					ans -= c - j;
					break;
				}
			}
			flag = !flag;
		}
		cout << ans << endl;
	}

}
