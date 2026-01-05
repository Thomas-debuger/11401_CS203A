// Polynomial division
#include <iostream>
using namespace std;

// quotient = dividend / divisor; remainder = dividend % divisor
// provided that dividendDegree >= divisorDegree, and
// neither dividend nor divisor is the zero polynomial
void division( int dividend[], int divisor[], int quotient[], int remainder[],
   int dividendDegree, int divisorDegree, int &quotientDegree, int &remainderDegree);

const int arraySize = 101;

int main()
{
   int T;
   cin >> T;
   for( int t = 0; t < T; t++ )
   {
      int dividend[ arraySize ];
      int dividendDegree;
      cin >> dividendDegree;
      for( int i = dividendDegree; i >= 0; i-- )
         cin >> dividend[ i ];

      int divisor[ arraySize ];
      int divisorDegree;
      cin >> divisorDegree;
      for( int i = divisorDegree; i >= 0; i-- )
         cin >> divisor[ i ];

      int quotient[ arraySize ];
      int remainder[ arraySize ];
      int quotientDegree;
      int remainderDegree;
      division( dividend, divisor, quotient, remainder,
         dividendDegree, divisorDegree, quotientDegree, remainderDegree );

      cout << quotientDegree;
      for( int i = quotientDegree; i >= 0; i-- )
         cout << " " << quotient[ i ];
      cout << endl;

      cout << remainderDegree;
      for( int i = remainderDegree; i >= 0; i-- )
         cout << " " << remainder[ i ];
      cout << endl;
   }
}

// quotient = dividend / divisor; remainder = dividend % divisor
// provided that dividendDegree >= divisorDegree, and
// neither dividend nor divisor is the zero polynomial
void division( int dividend[], int divisor[], int quotient[], int remainder[],
   int dividendDegree, int divisorDegree, int &quotientDegree, int &remainderDegree )
{
  for(int i=dividendDegree;i>=0;i--){
		remainder[i] = dividend[i];
  }
  remainderDegree = dividendDegree;
//第61行很重要
  quotientDegree = dividendDegree - divisorDegree;
  for(int i=quotientDegree;i>=0;i--){
    quotient[i] = remainder[i+divisorDegree] / divisor[divisorDegree];
    for(int j=divisorDegree;j>=0;j--){
  		remainder[j+i] -= quotient[i]*divisor[j];
  	}
  }
  for(int i=remainderDegree;i>=0;i--){
    if(remainder[i]!=0){
      remainderDegree = i;
  		break;
    }
//以下是考慮到餘數為0的情況
    else if(remainderDegree==dividendDegree && remainder[0]==0){
  		remainderDegree = 0;
  	}
  }
}
