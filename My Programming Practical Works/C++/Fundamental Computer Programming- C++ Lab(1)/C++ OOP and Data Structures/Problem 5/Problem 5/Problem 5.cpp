#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;
class DataProcessor {
private:
	vector <int> data;
public:
	void addData(int n) 
	{
		data.push_back(n);
	}
	void sortData() 
	{
		sort(data.begin(), data.end());//sort來自algorithm標頭檔
		for (int i = 0; i < data.size(); i++) {
			cout << data[i] << " ";
		}
		cout << endl;
	}
	void searchData(int n)
	{
		for (int i = 0; i < data.size(); i++) {
			if (n == data[i]) {
				cout << "Found it" << endl;
				return;
			}
		}
		cout << "Did not found it" << endl;
	}
};
int main()
{
	int n;
	DataProcessor a;
	for (int i = 0; i < 10; i++) {
		cin >> n;
		a.addData(n);
	}
	a.sortData();
	int findnumber;
	cin >> findnumber;
	a.searchData(findnumber);
}
