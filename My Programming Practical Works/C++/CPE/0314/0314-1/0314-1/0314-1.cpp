#include <iostream>
#include <iomanip>
#include <vector>
using namespace std;
int main()
{
	vector <int> a;
	int temp = 0;
	while (cin >> temp && temp) {
		a.push_back(temp);
	}
	cout << "PERFECTION OUTPUT" << endl;
	for (int i = 0; i < a.size(); i++) {
		int sum = 0;
		for (int j = 1; j < a[i]; j++) {
			if (a[i] % j == 0) {
				sum += j;
			}
		}
		if (sum == a[i]) {
			cout << setw(5) << a[i] << "  " << "PERFECT" << endl;
		}
		else if (sum > a[i]) {
			cout << setw(5) << a[i] << "  " << "ABUNDANT" << endl;
		}
		else if (sum < a[i]) {
			cout << setw(5) << a[i] << "  " << "DEFICIENT" << endl;
		}
	}
	cout << "END OF OUTPUT" << endl;
	return 0;
}

