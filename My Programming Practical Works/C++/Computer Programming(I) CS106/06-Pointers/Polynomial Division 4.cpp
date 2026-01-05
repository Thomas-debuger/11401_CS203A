// Polynomial division provided that the quotient and remainder have integer coefficients
#include <iostream>
using namespace std;

// quotient = dividend / divisor; remainder = dividend % divisor provided that
// dividendExpon[ dividendSize - 1 ] >= divisorExpon[ divisorSize - 1 ], and
// neither dividend nor divisor is the zero polynomial
void division(int* dividendCoef, long long int* dividendExpon, int dividendSize,
    int* divisorCoef, long long int* divisorExpon, int divisorSize,
    int*& quotientCoef, long long int*& quotientExpon, int& quotientSize,
    int*& remainderCoef, long long int*& remainderExpon, int& remainderSize);

// returns true if and only if polynomial1 == polynomial2
bool equal(int* coefficient1, long long int* exponent1, int size1,
    int* coefficient2, long long int* exponent2, int size2);

// minuend -= subtrahend
void subtraction(int* minuendCoef, long long int* minuendExpon, int& minuendSize,
    int* subtrahendCoef, long long int* subtrahendExpon, int subtrahendSize);

// outputs the specified polynomial
void output(int* coefficient, long long int* exponent, int size);

const int arraySize = 20;

int main()
{
    int T;
    cin >> T;
    for (int t = 0; t < T; t++)
    {
        int dividendSize;
        cin >> dividendSize; // input dividend
        int* dividendCoef = new int[dividendSize]();
        long long int* dividendExpon = new long long int[dividendSize]();
        for (int i = dividendSize - 1; i >= 0; i--)
            cin >> dividendCoef[i];
        for (int i = dividendSize - 1; i >= 0; i--)
            cin >> dividendExpon[i];

        int divisorSize;
        cin >> divisorSize; // input divisor
        int* divisorCoef = new int[divisorSize]();
        long long int* divisorExpon = new long long int[divisorSize]();
        for (int i = divisorSize - 1; i >= 0; i--)
            cin >> divisorCoef[i];
        for (int i = divisorSize - 1; i >= 0; i--)
            cin >> divisorExpon[i];

        int quotientSize;
        int* quotientCoef;
        long long int* quotientExpon;

        int remainderSize;
        int* remainderCoef;
        long long int* remainderExpon;

        // quotient = dividend / divisor; remainder = dividend % divisor
        division(dividendCoef, dividendExpon, dividendSize,
            divisorCoef, divisorExpon, divisorSize,
            quotientCoef, quotientExpon, quotientSize,
            remainderCoef, remainderExpon, remainderSize);

        output(quotientCoef, quotientExpon, quotientSize);
        output(remainderCoef, remainderExpon, remainderSize);

        delete[] dividendCoef;
        delete[] dividendExpon;
        delete[] divisorCoef;
        delete[] divisorExpon;
        delete[] quotientCoef;
        delete[] quotientExpon;
        delete[] remainderCoef;
        delete[] remainderExpon;
    }
}

// quotient = dividend / divisor; remainder = dividend % divisor provided that
// dividendExpon[ dividendSize - 1 ] >= divisorExpon[ divisorSize - 1 ], and
// neither dividend nor divisor is the zero polynomial
void division(int* dividendCoef, long long int* dividendExpon, int dividendSize,
    int* divisorCoef, long long int* divisorExpon, int divisorSize,
    int*& quotientCoef, long long int*& quotientExpon, int& quotientSize,
    int*& remainderCoef, long long int*& remainderExpon, int& remainderSize)
{
    quotientSize = arraySize;
    quotientCoef = new int [quotientSize]();
    quotientExpon = new long long int [quotientSize]();
    
    remainderSize = dividendSize;
    remainderCoef = new int [dividendSize]();
    remainderExpon = new long long int [dividendSize]();
    for (int i = 0;i < dividendSize;i++) {
        remainderCoef[i] = dividendCoef[i];
        remainderExpon[i] = dividendExpon[i];
    }
    
    int* bufferCoef = new int[divisorSize]();
    long long int* bufferExpon = new long long int[divisorSize]();
    int bufferSize = divisorSize;

    while (remainderSize>=divisorSize && remainderSize!=0) {
        quotientCoef[--quotientSize] = remainderCoef[remainderSize - 1] / divisorCoef[divisorSize - 1];
        quotientExpon[quotientSize] = remainderExpon[remainderSize - 1] - divisorExpon[divisorSize - 1];
        for (int i = divisorSize-1;i >= 0;i--) {
            bufferCoef[i] = quotientCoef[quotientSize] * divisorCoef[i];
            bufferExpon[i] = quotientExpon[quotientSize] + divisorExpon[i];
        }
        subtraction(remainderCoef, remainderExpon, remainderSize,
            bufferCoef, bufferExpon, bufferSize);
    }
    if(remainderSize == 0){
    	remainderSize = 1;
    }
    quotientSize = arraySize - quotientSize;
    int j = 0;
    for (int i = arraySize - quotientSize; i < arraySize; i++) {
        quotientCoef[j] = quotientCoef[i];
        quotientExpon[j] = quotientExpon[i];
        j++;
    }
}

// returns true if and only if polynomial1 == polynomial2
bool equal(int* coefficient1, long long int* exponent1, int size1,
    int* coefficient2, long long int* exponent2, int size2)
{
    if (size1 != size2)
        return false;

    for (int i = 0; i < size1; i++)
        if (coefficient1[i] != coefficient2[i] || exponent1[i] != exponent2[i])
            return false;

    return true;
}

// minuend -= subtrahend
void subtraction(int* minuendCoef, long long int* minuendExpon, int& minuendSize,
    int* subtrahendCoef, long long int* subtrahendExpon, int subtrahendSize)
{
    int *sumCoef = new int [minuendSize + subtrahendSize]();
    long long int* sumExpon = new long long int[minuendSize + subtrahendSize]();
    int i=0,j=0,sumSize = 0;
    while (i<minuendSize && j<subtrahendSize) {
        if (minuendExpon[i] > subtrahendExpon[j]) {
            sumCoef[sumSize] = -subtrahendCoef[j];
            sumExpon[sumSize] = subtrahendExpon[j];
            j++;
            sumSize++;
        }
        else if (minuendExpon[i] < subtrahendExpon[j]) {
            sumCoef[sumSize] = minuendCoef[i];
            sumExpon[sumSize] = minuendExpon[i];
            i++;
            sumSize++;
        }
        else {
            if (minuendCoef[i] - subtrahendCoef[j]!=0) {
                sumCoef[sumSize] = minuendCoef[i] - subtrahendCoef[j];
                sumExpon[sumSize] = minuendExpon[i];
                sumSize++;
            }
            i++;
            j++;
        }
    }
    if (i < minuendSize) {
        sumCoef[sumSize] = minuendCoef[i];
        sumExpon[sumSize] = minuendExpon[i];
        i++;
        sumSize++;
    }
    else if (j < subtrahendSize) {
        sumCoef[sumSize] = -subtrahendCoef[j];
        sumExpon[sumSize] = subtrahendExpon[j];
        j++;
        sumSize++;
    }
    if (sumSize == 0) {
        minuendCoef[0] = 0;
        minuendExpon[0] = 0;
    }
    for (int i = 0; i < sumSize; i++) {
        minuendCoef[i] = sumCoef[i];
        minuendExpon[i] = sumExpon[i];
    }
    minuendSize = sumSize;
}

// outputs the specified polynomial
void output(int* coefficient, long long int* exponent, int size)
{
    cout << size << endl;
    cout << coefficient[size - 1];
    for (int i = size - 2; i >= 0; i--)
        cout << " " << coefficient[i];
    cout << endl;

    cout << exponent[size - 1];
    for (int i = size - 2; i >= 0; i--)
        cout << " " << exponent[i];
    cout << endl;
}
