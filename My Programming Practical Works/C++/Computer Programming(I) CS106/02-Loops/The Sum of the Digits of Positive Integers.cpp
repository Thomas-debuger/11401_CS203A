#include <iostream>
using namespace std;


int main()
{
  int numcases;
  int sum = 0;
  cin >> numcases;
  for(int i=1;i <= numcases;i++){
    int n;
    cin >> n;
    int sum = 0;
    while(n != 0){
      sum += n%10;
	    n /= 10;
    }
  	cout << sum << endl;
  }
}

