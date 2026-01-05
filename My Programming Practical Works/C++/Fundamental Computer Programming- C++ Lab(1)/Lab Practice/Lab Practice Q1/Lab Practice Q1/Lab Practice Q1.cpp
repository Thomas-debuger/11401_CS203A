#include <iostream>
using namespace std;
int main()
{
	for (int i = 0; i < 7; i++) {
		for (int j = 6 - i; j > 0; j--) {
			cout << " ";
		}
		for (int k = 0; k < 2 * i + 1; k++) {
			cout << "*";
		}
		cout << endl;
	}
	for (int i = 0; i < 6; i++) {
		for (int j = 0; j < i + 1; j++) {
			cout << " ";
		}
		for (int k = 12; k > 2 * i + 1; k--) {
			cout << "*";
		}
		cout << endl;
	}
}