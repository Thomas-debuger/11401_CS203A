// Polynomial addition
#include <iostream>
using namespace std;

// sum = addend + adder provided that
// neither addend nor adder is the zero polynomial
void addition( int addend[], int adder[], int sum[],
   int addendDegree, int adderDegree, int &sumDegree );

const int arraySize = 101;

int main()
{
   int T;
   cin >> T;
   for( int t = 0; t < T; t++ )
   {
      int addend[ arraySize ];
      int addendDegree;
      cin >> addendDegree;
      for( int i = addendDegree; i >= 0; i-- )
         cin >> addend[ i ];

      int adder[ arraySize ];
      int adderDegree;
      cin >> adderDegree;
      for( int i = adderDegree; i >= 0; i-- )
         cin >> adder[ i ];

      int sum[ arraySize ];
      int sumDegree=0;
      addition( addend, adder, sum,
         addendDegree, adderDegree, sumDegree );

      cout << sumDegree;
      for( int i = sumDegree; i >= 0; i-- )
         cout << " " << sum[ i ];
      cout << endl;

      if( sumDegree != 0 && sum[ sumDegree ] == 0 )
         cout << "Leading coefficient of sum cannot be zero!\n";
   }
}

// sum = addend + adder provided that
// neither addend nor adder is the zero polynomial
void addition( int addend[], int adder[], int sum[],
   int addendDegree, int adderDegree, int &sumDegree )
{
  if(addendDegree>adderDegree){
    for(int i=addendDegree;i>adderDegree;i--){
			adder[i] = 0;
    }
    for(int i=addendDegree;i>=0;i--){
			sum[i] = addend[i] + adder[i];
    }
		sumDegree = addendDegree;
  }
  else if(adderDegree>addendDegree){
    for(int i=adderDegree;i>addendDegree;i--){
			addend[i] = 0;
    }
    for(int i=adderDegree;i>=0;i--){
			sum[i] = addend[i] + adder[i];
    }
		sumDegree = adderDegree;
  }
  else{
    for(int i=addendDegree;i>=0;i--){
			sum[i] = addend[i] + adder[i];
    }
    for(int i=addendDegree;i>=0;i--){
      if(sum[i] != 0){
        sumDegree = i;
				break;
			}
    }
  }
}
