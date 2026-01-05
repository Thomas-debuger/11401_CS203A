#include <iostream>
using namespace::std;

// find the sum of factors of n in the range [ 1 .. n - 1 ]

int sumFactors(int n);

int main()
{
  int numcases;
  cin >> numcases;
  int a,b;
  for(int i=1;i <= numcases;i++){
    cin >> a >> b;
    if(a == sumFactors(b) && b == sumFactors(a)){
			cout << "amicable pair" << endl;
    }
    else{
			cout << "non-amicable pair" << endl;
		}
	}
	
}

int sumFactors( int n )
{
	int sum = 0;
  for(int i=1;i < n;i++){
    if(n%i==0){
  		sum += i;
  	}
  }
  return sum;
}
