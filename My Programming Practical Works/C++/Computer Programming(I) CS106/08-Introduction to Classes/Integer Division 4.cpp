#include<iostream>
#include<cstring>
using std::cin;
using std::cout;
using std::endl;

class HugeInt
{
public:
    int size;
    int* digit;

    // quotient = dividend / divisor; remainder = dividend % divisor
    // provided that dividend != 0, divisor != 0 and dividend >= divisor
    void division(HugeInt divisor, HugeInt& quotient, HugeInt& remainder);

    // hugeInt /= 10, or equivalently, shifts right by one position
    void divideBy10();

    // minuend -= subtrahend
    // provided that minuend != 0, subtrahend != 0 and minuend >= subtrahend
    void subtraction(HugeInt subtrahend);

    // returns true if and only if hugeInt1 < hugeInt2
    // provided that hugeInt1 != 0 and hugeInt2 != 0
    bool less(HugeInt hugeInt2);

    // return true if and only if hugeInt1 == hugeInt2
    // provided that hugeInt1 != 0 and hugeInt2 != 0
    bool equal(HugeInt hugeInt2);

    // returns true if and only if the specified huge integer is zero
    bool isZero();
};

const int arraySize = 250;

int main()
{
    char strA[251], strB[251];

    int T;
    cin >> T;
    for (int t = 0; t < T; ++t)
    {
        cin >> strA >> strB;

        HugeInt dividend;
        dividend.size = strlen(strA);
        dividend.digit = new int[dividend.size]();
        for (int i = 0; i < dividend.size; ++i)
            dividend.digit[i] = strA[dividend.size - 1 - i] - '0';

        HugeInt divisor;
        divisor.size = strlen(strB);
        divisor.digit = new int[divisor.size]();
        for (int i = 0; i < divisor.size; ++i)
            divisor.digit[i] = strB[divisor.size - 1 - i] - '0';

        HugeInt quotient;
        HugeInt remainder;
        dividend.division(divisor, quotient, remainder);

        for (int i = quotient.size - 1; i >= 0; i--)
            cout << quotient.digit[i];
        cout << endl;

        for (int i = remainder.size - 1; i >= 0; i--)
            cout << remainder.digit[i];
        cout << endl;

        delete[] dividend.digit;
        delete[] divisor.digit;
        delete[] quotient.digit;
        delete[] remainder.digit;
    }
}

// quotient = dividend / divisor; remainder = dividend % divisor
// provided that dividend != 0, divisor != 0 and dividend >= divisor
void HugeInt::division(HugeInt divisor, HugeInt& quotient, HugeInt& remainder)
{
    remainder.size = size;
    remainder.digit = new int[remainder.size]();
    for (int i = 0; i < remainder.size; i++) {
        remainder.digit[i] = digit[i];
    }
    HugeInt buffer;
    buffer.size = remainder.size;
    buffer.digit = new int[buffer.size]();
    int j = buffer.size - 1;
    for (int i = divisor.size - 1; i >= 0; i--) {
        buffer.digit[j] = divisor.digit[i];
        j--;
    }
    int n = size - divisor.size;
    if (remainder.less(buffer)) {
        quotient.size = n;
        buffer.divideBy10();
    }
    else if (!remainder.less(buffer)) {
        quotient.size = n + 1;
    }
    quotient.digit = new int[quotient.size]();
    for (int i = quotient.size - 1; i >= 0; i--) {
        if (remainder.equal(buffer)) {
            quotient.digit[i] = 1;
            remainder.size = 1;
            remainder.digit[0] = 0;
            return;
        }
        while (!remainder.less(buffer)) {
            remainder.subtraction(buffer);
            quotient.digit[i]++;
            if (remainder.digit[remainder.size - 1] == 0) {
                break;
            }
        }
        buffer.divideBy10();
    }
    delete[] buffer.digit;
}

// hugeInt /= 10, or equivalently, shifts right by one position
void HugeInt::divideBy10()
{
    if (size == 1)
        digit[0] = 0;
    else
    {
        for (int i = 1; i < size; i++)
            digit[i - 1] = digit[i];

        size--;
        digit[size] = 0;
    }
}

// minuend -= subtrahend
// provided that minuend != 0, subtrahend != 0 and minuend >= subtrahend
void HugeInt::subtraction(HugeInt subtrahend)
{
    HugeInt difference;
    if (equal(subtrahend)) {
        size = 1;
        digit = new int[1];
        digit[0] = 0;
        return;
    }
    difference.size = size;
    difference.digit = new int[difference.size]();
    if (size > subtrahend.size) {
        for (int i = subtrahend.size - 1; i >= 0; i--) {
            difference.digit[i] = digit[i] - subtrahend.digit[i];
        }
        for (int i = size - 1; i >= subtrahend.size; i--) {
            difference.digit[i] = digit[i];
        }
    }
    else if (size == subtrahend.size) {
        for (int i = subtrahend.size - 1; i >= 0; i--) {
            difference.digit[i] = digit[i] - subtrahend.digit[i];
        }
    }
    for (int i = 0; i < difference.size - 1; i++) {
        if (difference.digit[i] < 0) {
            difference.digit[i] += 10;
            difference.digit[i + 1]--;
        }
    }
    for (int i = difference.size - 1; i >= 0; i--) {
        if (difference.digit[i] != 0) {
            difference.size = i + 1;
            break;
        }
    }
    size = difference.size;
    for (int i = 0; i < size; i++) {
        digit[i] = difference.digit[i];
    }
}

// returns true if and only if hugeInt1 < hugeInt2
// provided that hugeInt1 != 0 and hugeInt2 != 0
bool HugeInt::less(HugeInt hugeInt2)
{
    if (size < hugeInt2.size) {
        return true;
    }
    else if (size > hugeInt2.size) {
        return false;
    }
    else {
        for (int i = size - 1; i >= 0; i--) {
            if (digit[i] < hugeInt2.digit[i]) {
                return true;
            }
            else if (digit[i] > hugeInt2.digit[i]) {
                return false;
            }
        }
        return false;
    }

}

// return true if and only if hugeInt1 == hugeInt2
// provided that hugeInt1 != 0 and hugeInt2 != 0
bool HugeInt::equal(HugeInt hugeInt2)
{
    if (size != hugeInt2.size)
        return false;

    for (int i = size - 1; i >= 0; i--)
        if (digit[i] != hugeInt2.digit[i])
            return false;

    return true;
}

// returns true if and only if the specified huge integer is zero
bool HugeInt::isZero()
{
    return size == 1 && digit[0] == 0;
}
