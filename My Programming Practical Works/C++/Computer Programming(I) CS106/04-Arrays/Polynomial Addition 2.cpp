// Polynomial addition
#include <iostream>
using namespace std;

// sum = addend + adder
void addition( long long int addendCoef[], long long int addendExpon[], int addendSize,
               long long int adderCoef[], long long int adderExpon[], int adderSize,
               long long int sumCoef[], long long int sumExpon[], int &sumSize );

// outputs the specified polynomial
void output( long long int coefficient[], long long int exponent[], int size );

const int arraySize = 100;

int main()
{
   int T;
   cin >> T;
   for( int t = 0; t < T; t++ )
   {
      long long int addendCoef[ arraySize ] = {};
      long long int addendExpon[ arraySize ] = {};
      int addendSize;
      cin >> addendSize; // input addend
      for( int i = addendSize - 1; i >= 0; i-- )
         cin >> addendCoef[ i ];
      for( int i = addendSize - 1; i >= 0; i-- )
         cin >> addendExpon[ i ];

      long long int adderCoef[ arraySize ] = {};
      long long int adderExpon[ arraySize ] = {};
      int adderSize;     
      cin >> adderSize; // input adder
      for( int i = adderSize - 1; i >= 0; i-- )
         cin >> adderCoef[ i ];
      for( int i = adderSize - 1; i >= 0; i-- )
         cin >> adderExpon[ i ];

      long long int sumCoef[ 2 * arraySize ] = {};
      long long int sumExpon[ 2 * arraySize ] = {};
      int sumSize = 0;

      addition( addendCoef, addendExpon, addendSize,
                adderCoef, adderExpon, adderSize,
                sumCoef, sumExpon, sumSize );

      output( sumCoef, sumExpon, sumSize );
   }
}

// sum = addend + adder
void addition( long long int addendCoef[], long long int addendExpon[], int addendSize,
               long long int adderCoef[], long long int adderExpon[], int adderSize,
               long long int sumCoef[], long long int sumExpon[], int &sumSize )
{
  int i=0,j=0;
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
      if(addendCoef[i] + adderCoef[j] != 0){
        sumCoef[sumSize] = addendCoef[i] + adderCoef[j];
        sumExpon[sumSize] = adderExpon[i];
        i++;
        j++;
		    sumSize++;
      }
    	else{
        i++;
        j++;
    	}
	  }
  }
  while (i<addendSize){
    sumCoef[sumSize] = addendCoef[i];
    sumExpon[sumSize] = addendExpon[i];
    i++;
		sumSize++;
  }
  while (j<adderSize){
    sumCoef[sumSize] = adderCoef[j];
    sumExpon[sumSize] = adderExpon[j];
    j++;
		sumSize++;
  }
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
