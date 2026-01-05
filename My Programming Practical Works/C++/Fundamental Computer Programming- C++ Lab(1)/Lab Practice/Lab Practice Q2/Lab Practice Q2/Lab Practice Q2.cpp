#include<iostream>
using namespace std;
int main()
{
	int t;
	cin >> t;
	for (int num = 0; num < t; num++) {
		int a, b, k = 0;
		int arr[6];
		cin >> a;
		b = a;
		while (b > 0) {
			arr[k] = b % 10;
			b /= 10;
			k++;
		}

		int result, j = 0, sum = 0;
		while (true) {
			result = 1;
			for (int i = 0; i < k; i++) {
				result *= arr[j];
			}
			sum += result;
			j++;
			if (j == k) {
				break;
			}
		}

		if (sum == a) {
			cout << "An Armstrong number" << endl;
		}
		else {
			cout << "Not an Armstrong number" << endl;
		}
	}
}