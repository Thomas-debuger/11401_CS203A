/******************************************************************************

                              Online C++ Compiler.
               Code, Compile, Run and Debug C++ program online.
Write your code in this editor and press "Run" button to compile and execute it.

*******************************************************************************/

// Polynomial division provided that the quotient and remainder have integer coefficients
#include <iostream>
using namespace std;

// quotient = dividend / divisor; remainder = dividend % divisor provided that
// dividendExpon[ dividendSize - 1 ] >= divisorExpon[ divisorSize - 1 ], and
// neither dividend nor divisor is the zero polynomial
void division( int dividendCoef[], long long int dividendExpon[], int dividendSize,
               int divisorCoef[], long long int divisorExpon[], int divisorSize,
               int quotientCoef[], long long int quotientExpon[], int &quotientSize,
               int remainderCoef[], long long int remainderExpon[], int &remainderSize );

// returns true if and only if polynomial1 == polynomial2
bool equal( int coefficient1[], long long int exponent1[], int size1,
            int coefficient2[], long long int exponent2[], int size2 );

// minuend -= subtrahend
void subtraction( int minuendCoef[], long long int minuendExpon[], int &minuendSize,
                  int subtrahendCoef[], long long int subtrahendExpon[], int subtrahendSize );

// outputs the specified polynomial
void output( int coefficient[], long long int exponent[], int size );

const int arraySize1 = 20;
const int arraySize2 = 400;

int main()
{
   int T;
   cin >> T;
   for( int  t = 0; t < T; t++ )
   {
      int dividendCoef[ arraySize2 ] = {};
      long long int dividendExpon[ arraySize2 ] = {};
      int dividendSize;
      cin >> dividendSize; // input dividend
      for( int i = dividendSize - 1; i >= 0; i-- )
         cin >> dividendCoef[ i ];
      for( int i = dividendSize - 1; i >= 0; i-- )
         cin >> dividendExpon[ i ];

      int divisorCoef[ arraySize1 ] = {};
      long long int divisorExpon[ arraySize1 ] = {};
      int divisorSize;     
      cin >> divisorSize; // input divisor
      for( int i = divisorSize - 1; i >= 0; i-- )
         cin >> divisorCoef[ i ];
      for( int i = divisorSize - 1; i >= 0; i-- )
         cin >> divisorExpon[ i ];

      int quotientCoef[ arraySize1 ] = {};
      long long int quotientExpon[ arraySize1 ] = {};
      int quotientSize = arraySize1;

      int remainderCoef[ arraySize2 ] = {};
      long long int remainderExpon[ arraySize2 ] = {};
      int remainderSize = dividendSize;

      // quotient = dividend / divisor; remainder = dividend % divisor
      division( dividendCoef, dividendExpon, dividendSize,
                divisorCoef, divisorExpon, divisorSize,
                quotientCoef, quotientExpon, quotientSize,
                remainderCoef, remainderExpon, remainderSize );

      output( quotientCoef, quotientExpon, quotientSize );
      output( remainderCoef, remainderExpon, remainderSize );
   }
}

// quotient = dividend / divisor; remainder = dividend % divisor provided that
// dividendExpon[ dividendSize - 1 ] >= divisorExpon[ divisorSize - 1 ], and
// neither dividend nor divisor is the zero polynomial
void division( int dividendCoef[], long long int dividendExpon[], int dividendSize,
               int divisorCoef[], long long int divisorExpon[], int divisorSize,
               int quotientCoef[], long long int quotientExpon[], int &quotientSize,
               int remainderCoef[], long long int remainderExpon[], int &remainderSize )
{
  int k=0;
  int bufferCoef[arraySize1]={};
  long long int bufferExpon[arraySize1]={};
  int bufferSize = divisorSize;
  
  for(int i=0;i<dividendSize;i++){
    remainderCoef[i] = dividendCoef[i];
    remainderExpon[i] = dividendExpon[i];
  }
  remainderSize = dividendSize;
  
    while(remainderExpon[remainderSize-1]>=divisorExpon[divisorSize-1] && remainderSize>0){
    quotientCoef[--quotientSize] = remainderCoef[remainderSize-1]/divisorCoef[divisorSize-1];
    quotientExpon[quotientSize] = remainderExpon[remainderSize-1] - divisorExpon[divisorSize-1];
    for(int j=divisorSize-1;j>=0;j--){
        bufferCoef[j] = quotientCoef[quotientSize]*divisorCoef[j];
        bufferExpon[j] = quotientExpon[quotientSize]+divisorExpon[j];
    }
    subtraction(remainderCoef,remainderExpon,remainderSize,
                bufferCoef,bufferExpon,bufferSize);
  }
  quotientSize = arraySize1 - quotientSize;
  for(int i=arraySize1-quotientSize;i<arraySize1;i++){
      quotientCoef[k] = quotientCoef[i];
      quotientExpon[k] = quotientExpon[i];
      k++;
  }
//
  if(remainderSize==0){
  	remainderSize = 1;
  }
//
}

// returns true if and only if polynomial1 == polynomial2
bool equal( int coefficient1[], long long int exponent1[], int size1,
            int coefficient2[], long long int exponent2[], int size2 )
{
   if( size1 != size2 )
      return false;

   for( int i = 0; i < size1; i++ )
      if( coefficient1[ i ] != coefficient2[ i ] || exponent1[ i ] != exponent2[ i ] )
         return false;

   return true;
}

// minuend -= subtrahend
void subtraction( int minuendCoef[], long long int minuendExpon[], int &minuendSize,
                  int subtrahendCoef[], long long int subtrahendExpon[], int subtrahendSize )
{
    int sumCoef[arraySize2] = {};
    long long int sumExpon[arraySize2] = {}; 
    int sumSize = 0;
    int i=0,j=0;
    while(i<minuendSize && j<subtrahendSize){
        if(minuendExpon[i]>subtrahendExpon[j]){
            sumCoef[sumSize] = -subtrahendCoef[j];
            sumExpon[sumSize] = subtrahendExpon[j];
            j++;
            sumSize++;
        }
        else if(minuendExpon[i]<subtrahendExpon[j]){
            sumCoef[sumSize] = minuendCoef[i];
            sumExpon[sumSize] = minuendExpon[i];
            i++;
            sumSize++;
        }
        else{
            if(minuendCoef[i]-subtrahendCoef[j]!=0){
                sumCoef[sumSize] = minuendCoef[i]-subtrahendCoef[j];
                sumExpon[sumSize] = minuendExpon[i];
                sumSize++;
            }
            i++;
            j++;
        }
    }
    while(i<minuendSize){
        sumCoef[sumSize] = minuendCoef[i];
        sumExpon[sumSize] = minuendExpon[i];
        i++;
        sumSize++;
    }
    while(j<subtrahendSize){
        sumCoef[sumSize] = -subtrahendCoef[j];
        sumExpon[sumSize] = subtrahendExpon[j];
        j++;
        sumSize++;
    }
//
    if(sumSize==0){
      minuendCoef[0] = 0;
    	minuendExpon[0] = 0;
    }
//
    for(int i=sumSize-1;i>=0;i--){
    	minuendCoef[i] = sumCoef[i];
    	minuendExpon[i] = sumExpon[i];
    }
    minuendSize = sumSize;
}

// outputs the specified polynomial
void output( int coefficient[], long long int exponent[], int size )
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
