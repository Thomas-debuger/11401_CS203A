// Polynomial multiplication
#include <iostream>
using namespace std;

// product = multiplicand * multiplier
void multiplication( long long int multiplicandCoef[], long long int multiplicandExpon[], int multiplicandSize,
                     long long int multiplierCoef[], long long int multiplierExpon[], int multiplierSize,
                     long long int productCoef[], long long int productExpon[], int &productSize );

// addend += adder
void addition( long long int addendCoef[], long long int addendExpon[], int &addendSize,
               long long int adderCoef[], long long int adderExpon[], int adderSize );

// returns true if and only if the specified polynomial is the zero polynomial
bool isZero( long long int coefficient[], int size );

// outputs the specified polynomial
void output( long long int coefficient[], long long int exponent[], int size );

const int arraySize = 10;

int main()
{
   int T;
   cin >> T;
   for( int t = 0; t < T; t++ )
   {
      long long int multiplicandCoef[ arraySize ] = {};
      long long int multiplicandExpon[ arraySize ] = {};
      int multiplicandSize;
      cin >> multiplicandSize; // input multiplicand
      for( int i = multiplicandSize - 1; i >= 0; i-- )
         cin >> multiplicandCoef[ i ];
      for( int i = multiplicandSize - 1; i >= 0; i-- )
         cin >> multiplicandExpon[ i ];

      long long int multiplierCoef[ arraySize ] = {};
      long long int multiplierExpon[ arraySize ] = {};
      int multiplierSize;     
      cin >> multiplierSize; // input multiplier
      for( int i = multiplierSize - 1; i >= 0; i-- )
         cin >> multiplierCoef[ i ];
      for( int i = multiplierSize - 1; i >= 0; i-- )
         cin >> multiplierExpon[ i ];

      long long int productCoef[ arraySize * arraySize ] = {};
      long long int productExpon[ arraySize * arraySize ] = {};
      int productSize = 0;

      // product = multiplicand * multiplier
      multiplication( multiplicandCoef, multiplicandExpon, multiplicandSize,
                      multiplierCoef, multiplierExpon, multiplierSize,
                      productCoef, productExpon, productSize );

      output( productCoef, productExpon, productSize );
   }
}

// product = multiplicand * multiplier
void multiplication( long long int multiplicandCoef[], long long int multiplicandExpon[], int multiplicandSize,
                     long long int multiplierCoef[], long long int multiplierExpon[], int multiplierSize,
                     long long int productCoef[], long long int productExpon[], int &productSize )
{
//宣告時記得要用long long int，陣列大小要用arraySize*arraySize
  int adderSize;
  long long int adderCoef[arraySize*arraySize] = {};
	long long int adderExpon[arraySize*arraySize] = {};
  for(int i=0;i<multiplierSize;i++){
  	adderSize = 0;
    for(int j=0;j<multiplicandSize;j++){
      adderCoef[j] = multiplierCoef[i] * multiplicandCoef[j];
      adderExpon[j] = multiplierExpon[i] + multiplicandExpon[j];
			adderSize++;
    }
    addition(productCoef,productExpon,productSize,
             adderCoef,adderExpon,adderSize);
	}
}

// addend += adder
void addition( long long int addendCoef[], long long int addendExpon[], int &addendSize,
               long long int adderCoef[], long long int adderExpon[], int adderSize )
{
  int i=0,j=0,sumSize=0;
  long long int sumCoef[arraySize*arraySize] = {};
	long long int sumExpon[arraySize*arraySize] = {};
  while(i<addendSize && j<adderSize){
    if(addendExpon[i]>adderExpon[j]){
      sumCoef[sumSize] = adderCoef[j]; 
      sumExpon[sumSize] = adderExpon[j];
      j++;
			sumSize++;
    }
    else if(adderExpon[j]>addendExpon[i]){
      sumCoef[sumSize] = addendCoef[i]; 
      sumExpon[sumSize] = addendExpon[i];
      i++;
			sumSize++;
    }
    else{
      if(addendCoef[i]+adderCoef[j]!=0){
        sumCoef[sumSize] = addendCoef[i] + adderCoef[j]; 
        sumExpon[sumSize] = addendExpon[i];
        sumSize++;
      }
      i++;
			j++;
		}
  }
//以下兩個記得是用while不是if
  while(i<addendSize){
    sumCoef[sumSize] = addendCoef[i]; 
    sumExpon[sumSize] = addendExpon[i];
    i++;
	  sumSize++;
  }
  while(j<adderSize){
    sumCoef[sumSize] = adderCoef[j]; 
    sumExpon[sumSize] = adderExpon[j];
    j++;
	  sumSize++;
  }
  for(int i=0;i<sumSize;i++){
    addendCoef[i] = sumCoef[i];
    addendExpon[i] = sumExpon[i];
		addendSize = sumSize;
	}
}

// returns true if and only if the specified polynomial is the zero polynomial
bool isZero( long long int coefficient[], int size )
{
   return ( size == 1 && coefficient[ 0 ] == 0 );
}

// outputs the specified polynomial
void output( long long int coefficient[], long long int exponent[], int size )
{
   cout << size << endl;
   cout << coefficient[ size - 1 ];
   for( int i = size - 2; i >= 0; i-- )
      cout << " " << coefficient[ i ];
   cout << endl;

   cout << exponent[ size - 1 ];
   for( int i = size - 2; i >= 0; i-- )
      cout << " " << exponent[ i ];
   cout << endl;
}
