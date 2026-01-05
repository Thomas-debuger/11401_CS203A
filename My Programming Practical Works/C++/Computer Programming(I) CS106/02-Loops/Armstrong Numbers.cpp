#include<iostream>
using namespace std;

// returns the sum of the k-th powers of digits of n,
// where k is the number of digits of n.
int sumPowerDigits( int n );

// returns the k-th power of d, where k is the number of digits of n.
int power(int d,int y);

int numDigits; // the number of digits of n, i.e., k in the above comments

int main()
{
   int numcases;
   cin >> numcases;
   for( int i = 1; i <= numcases; i++ )
   {
      int n;
      cin >> n;

      numDigits = 0; // the number of digits of n
      for( int i = n; i > 0; i /= 10 )
         numDigits++;

      if( n == sumPowerDigits(n) )
         cout << "Armstrong" << endl;
      else
         cout << "Not Armstrong" << endl;
   }
}

int sumPowerDigits(int n)
{
	int a,sum = 0;
  while(n > 0){
    a = n%10;
    sum += power(a,numDigits);
  	n /= 10;
  }
  return sum;
}

int power(int a,int numDigits)
{
	int result = 1;
  while(numDigits--){
		result *= a;
  }
	return result;
}
