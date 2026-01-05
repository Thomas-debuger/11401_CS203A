#include <iostream>
#include <vector>
using namespace std;
int main()
{
	int a, b;
	while (cin >> a >> b) {
		vector <int> result;
		while (b) {
			result.push_back(a / b);
			int temp = a % b;
			a = b;
			b = temp;
		}
		cout << "[" << result[0] << ";";
		for (int i = 1; i < result.size(); i++) {
			cout << result[i];
			if (i != result.size() - 1) {
				cout << ",";
			}
		}
		cout << "]" << endl;
	}
	
}

