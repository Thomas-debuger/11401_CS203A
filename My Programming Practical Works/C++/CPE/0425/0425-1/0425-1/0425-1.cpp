#include <iostream>
#include <set>
#include <string>
using namespace std;
int main()
{
	char c;
	string s;
	set <string> ans;
	while (cin.get(c)) {
		if (isalpha(c)) {
			s.push_back(c);
			continue;
		}
		if (s != "") {
			ans.insert(s);
		}
		s = "";
	}
	if (s != "") {
		ans.insert(s);
	}
	set <string>::iterator it;
	for (it = ans.begin(); it != ans.end(); it++) {
		cout << *it << endl;
	}
}
