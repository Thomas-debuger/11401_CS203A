#include <iostream>
#include <cstring>
using namespace::std;

struct HugeInt
{
    int size;
    int* digit;
};

// sum = addend + adder
void addition(HugeInt addend, HugeInt adder, HugeInt& sum);

int main()
{
    char strA[251], strB[251];
    int T;
    cin >> T;
    for (int t = 0; t < T; ++t)
    {
        cin >> strA >> strB;

        HugeInt addend;
        addend.size = strlen(strA);
        addend.digit = new int[addend.size];
        for (int i = 0; i < addend.size; ++i)
            addend.digit[i] = strA[addend.size - 1 - i] - '0';

        HugeInt adder;
        adder.size = strlen(strB);
        adder.digit = new int[adder.size];
        for (int i = 0; i < adder.size; ++i)
            adder.digit[i] = strB[adder.size - 1 - i] - '0';

        HugeInt sum;
        addition(addend, adder, sum);

        for (int i = sum.size - 1; i >= 0; i--)
            cout << sum.digit[i];
        cout << endl;

        delete[] addend.digit;
        delete[] adder.digit;
        delete[] sum.digit;
    }
}

// sum = addend + adder
void addition(HugeInt addend, HugeInt adder, HugeInt& sum)
{
    sum.size = (addend.size >= adder.size) ? addend.size + 1 : adder.size + 1;
    sum.digit = new int[sum.size]();

    for (int k = 0; k < addend.size; k++) {
        sum.digit[k] = addend.digit[k];
    }
    for (int k = 0; k < adder.size; k++) {
        sum.digit[k] += adder.digit[k];
    }
    for (int k = 0; k < sum.size; k++) {
        if (sum.digit[k] >= 10) {
            sum.digit[k] -= 10;
            sum.digit[k + 1] += 1;
        }
    }
    for (int i = sum.size - 1; i >= 0; i--) {
        if (sum.digit[i] != 0) {
            sum.size = i + 1;
            break;
        }
    }
}
