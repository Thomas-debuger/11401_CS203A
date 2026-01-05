// Polynomial addition
#include <iostream>
using namespace std;

// sum = addend + adder
void addition(long long int* addendCoef, long long int* addendExpon, int addendSize,
    long long int* adderCoef, long long int* adderExpon, int adderSize,
    long long int*& sumCoef, long long int*& sumExpon, int& sumSize);

// outputs the specified polynomial
void output(long long int* coefficient, long long int* exponent, int size);

int main()
{
    int T;
    cin >> T;
    for (int t = 0; t < T; t++)
    {
        int addendSize;
        cin >> addendSize;
        long long int* addendCoef = new long long int[addendSize];
        long long int* addendExpon = new long long int[addendSize];
        for (int i = addendSize - 1; i >= 0; i--)
            cin >> addendCoef[i];
        for (int i = addendSize - 1; i >= 0; i--)
            cin >> addendExpon[i];

        int adderSize;
        cin >> adderSize;
        long long int* adderCoef = new long long int[adderSize];
        long long int* adderExpon = new long long int[adderSize];
        for (int i = adderSize - 1; i >= 0; i--)
            cin >> adderCoef[i];
        for (int i = adderSize - 1; i >= 0; i--)
            cin >> adderExpon[i];

        int sumSize;
        long long int* sumCoef;
        long long int* sumExpon;
        addition(addendCoef, addendExpon, addendSize,
            adderCoef, adderExpon, adderSize,
            sumCoef, sumExpon, sumSize);

        output(sumCoef, sumExpon, sumSize);

        delete[] addendCoef;
        delete[] addendExpon;
        delete[] adderCoef;
        delete[] adderExpon;
        delete[] sumCoef;
        delete[] sumExpon;
    }
}

// sum = addend + adder
void addition(long long int* addendCoef, long long int* addendExpon, int addendSize,
    long long int* adderCoef, long long int* adderExpon, int adderSize,
    long long int*& sumCoef, long long int*& sumExpon, int& sumSize)
{
    int i = 0, j = 0;
    sumCoef = new long long int[addendSize + adderSize];
    sumExpon = new long long int[addendSize + adderSize];
    for (int i = 0; i < addendSize + adderSize; i++) {
        sumCoef[i] = 0;
        sumExpon[i] = 0;
    }
    sumSize = 0;
    while (i<addendSize && j<adderSize) {
        if (addendExpon[i] > adderExpon[j]) {
            sumCoef[sumSize] = adderCoef[j];
            sumExpon[sumSize] = adderExpon[j];
            j++;
            sumSize++;
        }
        else if (addendExpon[i] < adderExpon[j]) {
            sumCoef[sumSize] = addendCoef[i];
            sumExpon[sumSize] = addendExpon[i];
            i++;
            sumSize++;
        }
        else {
            if (addendCoef[i] + adderCoef[j] != 0) {
                sumCoef[sumSize] = addendCoef[i] + adderCoef[j];
                sumExpon[sumSize] = addendExpon[i];
                sumSize++;
            }
            i++;
            j++;
        }
    }
    while (i < addendSize) {
        sumCoef[sumSize] = addendCoef[i];
        sumExpon[sumSize] = addendExpon[i];
        i++;
        sumSize++;
    }
    while (j < adderSize) {
        sumCoef[sumSize] = adderCoef[j];
        sumExpon[sumSize] = adderExpon[j];
        j++;
        sumSize++;
    }
}

// outputs the specified polynomial
void output(long long int* coefficient, long long int* exponent, int size)
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
