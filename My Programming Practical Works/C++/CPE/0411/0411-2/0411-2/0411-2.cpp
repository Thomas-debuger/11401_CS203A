#include <iostream>
#include <vector>
using namespace std;
int main()
{
	int T;
	cin >> T;
	for (int Case = 1; Case <= T; Case++) {
		vector <int> a;
		int n, temp;
		cin >> n;
		for (int i = 0; i < n; i++) {
			cin >> temp;
			a.push_back(temp);
		}
		int count = 1;
		bool down = true;
		for (int i = 0; i < n - 1; i++) {
			if (down && a[i] > a[i + 1]) {
				count++;
				down = false;
			}
			else if (!down && a[i] < a[i + 1]) {
				count++;
				down = true;
			}
		}
		cout << count << endl;
	}
}

