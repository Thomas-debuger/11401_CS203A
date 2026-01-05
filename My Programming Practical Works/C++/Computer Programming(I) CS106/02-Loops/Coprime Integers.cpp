/******************************************************************************

                              Online C++ Compiler.
               Code, Compile, Run and Debug C++ program online.
Write your code in this editor and press "Run" button to compile and execute it.

*******************************************************************************/

#include <iostream>
using namespace::std;

// returns true if and only if a and b have a common factor
bool haveCommonFactors( int a, int b );

int main()
{
	int numCases;
	cin >> numCases;
	for( int i = 1; i <= numCases; i++ )
	{
		int a, b;
		cin >> a >> b;

		if( haveCommonFactors( a, b ) )
			cout << "not coprime" << endl;
		else
			cout << "coprime" << endl;
	}
}

bool haveCommonFactors( int a, int b )
{
  if(a%2==0 && b%2==0){
		return true;
	}
  for(int i=3;i<=a;i+=2){
    if(a%i==0 && b%i==0){
      return true;
    }
  }
    return false;
}
