#include<iostream>
#include<vector>
#include<algorithm>
using namespace std;
int main()
{
	vector <int> a{ 1,2,3,4,5 };
	vector <int> b{ 3,4,5,6,7 };
	vector <int> c;
	for (int i = 0; i < 5; i++) {
		for (int j = 0; j < 5; j++) {
			if (a[i] == b[j]) {
				if (find(c.begin(), c.end(), a[i]) == c.end()) {
					c.push_back(a[i]);
				}
			}
		}
	}

	cout << "Insection: {";
	for (int i = 0; i < c.size(); i++) {
		if (i == c.size() - 1) {
			cout << c[i];
			break;
		}
		cout << c[i] << ",";
	}
	cout << "}";
}