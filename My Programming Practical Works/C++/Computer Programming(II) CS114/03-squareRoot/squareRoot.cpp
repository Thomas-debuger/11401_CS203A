#include <iostream>
using std::cin;
using std::cout;
using std::endl;
using std::ostream;

#include <iomanip>
using std::setw;
using std::setfill;

#include <string>
using std::string;

class VectorVal
{
public:
    using value_type = long int;
    using size_type = size_t;
    using difference_type = ptrdiff_t;
    using pointer = value_type*;
    using const_pointer = const value_type*;
    using reference = value_type&;
    using const_reference = const value_type&;

    VectorVal()
        : myFirst(),
        myLast(),
        myEnd()
    {
    }

    pointer myFirst; // pointer to beginning of array
    pointer myLast;  // pointer to current end of sequence
    pointer myEnd;   // pointer to end of array
};


class vector // varying size array of values
{
public:
    using value_type = long int;
    using pointer = value_type*;
    using const_pointer = const value_type*;
    using reference = int&;
    using const_reference = const int&;
    using size_type = size_t;
    using difference_type = ptrdiff_t;

private:
    using ScaryVal = VectorVal;

public:
    using iterator = value_type*;
    using const_iterator = const value_type*;

    // empty container constructor (default constructor)
    // Constructs an empty container, with no elements.
    vector()
        : myData()
    {
    }

    // fill constructor
    // Constructs a container with "count" elements.
    // Each element is initialized as 0.
    vector(const size_type count)
        : myData()
    {
        if (count != 0)
        {
            myData.myFirst = new value_type[count]();
            myData.myLast = myData.myFirst + count;
            myData.myEnd = myData.myFirst + count;
        }
    }

    // copy constructor
    // Constructs a container with a copy of each of the elements in "right",
    // in the same order.
    vector(const vector& right)
        : myData()
    {
        if (right.myData.myLast - right.myData.myFirst == 0) {
            myData.myFirst = myData.myLast = myData.myEnd = nullptr;
        }
        else {
            myData.myFirst = new value_type[right.size()];
            myData.myLast = myData.myFirst;
            for (int i = 0; i < right.size(); i++) {
                myData.myFirst[i] = right.myData.myFirst[i];
                myData.myLast++;
            }
            myData.myEnd = myData.myFirst + right.size();
        }
    }

    // Vector destructor
    // Destroys the container object.
    // Deallocates all the storage capacity allocated by the vector.
    ~vector()
    {
        if (myData.myFirst != nullptr)
            delete[] myData.myFirst;
    }

    // overloaded assignment operator
    // Assigns new contents to the container, replacing its current contents,
    // and modifying its size accordingly.
    // Copies all the elements from "right" into the container
    // (with "right" preserving its contents).
    vector& assign(const vector& right)
    {
        if (this != &right) // avoid self-assignment
        {
            size_type rightSize = right.size();
            if (rightSize > capacity())
            {
                if (capacity() > 0)
                    delete[] myData.myFirst; // release space

                size_type newCapacity = capacity() * 3 / 2;
                if (newCapacity < rightSize)
                    newCapacity = rightSize;

                myData.myFirst = new value_type[newCapacity]();
                myData.myEnd = myData.myFirst + newCapacity;
            }
            myData.myLast = myData.myFirst;
            for (int i = 0; i < right.size(); i++) {
                myData.myFirst[i] = right.myData.myFirst[i];
                myData.myLast++;
            }
        }

        return *this; // enables x = y = z, for example
    }

    bool equal(const vector& right) const
    {
        if (size() != right.size())
            return false; // vectors of different number of elements

        const_iterator it1 = begin();
        const_iterator it2 = right.begin();
        for (; it1 != end(); ++it1, ++it2)
            if (*it1 != *it2)
                return false; // vector contents are not equal

        return true; // vector contents are equal
    }

    // The vector is extended by inserting a new element before the element
    // at the specified position, effectively increasing the container size by one.
    // This causes an automatic reallocation of the allocated storage space
    // if and only if the new vector size surpasses the current vector capacity.
    // Relocates all the elements that were after "where" to their new positions.
    iterator insert(const_iterator where, const value_type& val)
    {
        if (where >= myData.myFirst && where <= myData.myLast)
        {
            size_type originalSize = size();
            size_type originalCapacity = capacity();
            if (originalSize == originalCapacity)
            {
                size_type newCapacity;
                if (originalCapacity <= 1)
                    newCapacity = originalCapacity + 1;
                else
                    newCapacity = originalCapacity * 3 / 2;



                pointer temp = new value_type[newCapacity]();
                for (int i = 0; i < where - myData.myFirst; i++) {
                    temp[i] = myData.myFirst[i];
                }
                temp[where - myData.myFirst] = val;
                for (int i = where - myData.myFirst; i < originalSize; i++) {
                    temp[i + 1] = myData.myFirst[i];
                }
                delete[] myData.myFirst;
                myData.myFirst = temp;
                myData.myLast = myData.myFirst + originalSize + 1;
                myData.myEnd = myData.myFirst + newCapacity;
                return myData.myFirst + (where - myData.myFirst);
            }
            else
            {
                for (int i = size(); i > where - myData.myFirst; i--) {
                    myData.myFirst[i] = myData.myFirst[i - 1];
                }
                myData.myFirst[where - myData.myFirst] = val;
                myData.myLast++;
                return myData.myFirst + (where - myData.myFirst);
            }
        }
        else
            return nullptr;
    }

    // Removes from the vector either a single element (where).
    // This effectively reduces the container size by one, which is destroyed.
    // Relocates all the elements after the element erased to their new positions.
    iterator erase(const_iterator where)
    {
        if (where >= myData.myFirst && where < myData.myLast)
        {
            for (int i = where - myData.myFirst; i < size() - 1; i++) {
                myData.myFirst[i] = myData.myFirst[i + 1];
            }
            myData.myLast--;
            return myData.myFirst + (where - myData.myFirst);
        }
        else
            return nullptr;
    }

    // Removes all elements from the vector (which are destroyed),
    // leaving the container with a size of 0.
    // A reallocation is not guaranteed to happen,
    // and the vector capacity is not guaranteed to change due to calling this function.
    void clear() // erase all
    {
        myData.myLast = myData.myFirst;
    }

    // Returns an iterator pointing to the first element in the vector.
    // If the container is empty, the returned iterator value shall not be dereferenced.
    iterator begin()
    {
        return myData.myFirst;
    }

    // Returns an iterator pointing to the first element in the vector.
    // If the container is empty, the returned iterator value shall not be dereferenced.
    const_iterator begin() const
    {
        return const_iterator(myData.myFirst);
    }

    // Returns an iterator referring to the past-the-end element in the vector container.
    // The past-the-end element is the theoretical element
    // that would follow the last element in the vector.
    // It does not point to any element, and thus shall not be dereferenced.
    // If the container is empty, this function returns the same as vector::begin.
    iterator end()
    {
        return myData.myLast;
    }

    // Returns an iterator referring to the past-the-end element in the vector container.
    // The past-the-end element is the theoretical element
    // that would follow the last element in the vector.
    // It does not point to any element, and thus shall not be dereferenced.
    // If the container is empty, this function returns the same as vector::begin.
    const_iterator end() const
    {
        return const_iterator(myData.myLast);
    }

    // Returns whether the vector is empty (i.e. whether its size is 0).
    bool empty() const
    {
        return myData.myFirst == myData.myLast;
    }

    // Returns the number of elements in the vector.
    // This is the number of actual objects held in the vector,
    // which is not necessarily equal to its storage capacity.
    size_type size() const
    {
        return static_cast<size_type>(myData.myLast - myData.myFirst);
    }

    // Returns the size of the storage space currently allocated for the vector,
    // expressed in terms of elements.
    // This capacity is not necessarily equal to the vector size.
    // It can be equal or greater, with the extra space allowing to accommodate
    // for growth without the need to reallocate on each insertion.
    size_type capacity() const
    {
        return static_cast<size_type>(myData.myEnd - myData.myFirst);
    }

private:
    ScaryVal myData;
};


class HugeInteger
{
public:
    HugeInteger(unsigned int n = 0); // constructor; construct a zero HugeInteger with size n

    // copy constructor; constructs a HugeInteger with a copy of each of the elements in integerToCopy
    HugeInteger(const HugeInteger& integerToCopy);

    // Constructs a HugeInteger with str.size() elements.
    // Each element is initialized as the correcponding element in str.
    HugeInteger(string str);

    ~HugeInteger(); // destructor; destroys the HugeInteger

    const HugeInteger& assign(const HugeInteger& right); // assignment operator

    bool equal(const HugeInteger& right) const; // less than or equal to

    bool less(const HugeInteger& right) const; // less than

    HugeInteger square(); // return the square of HugeInteger

    HugeInteger squareRoot(); // return the square root of HugeInteger

    bool isZero() const; // return true if and only if all digits are zero

    void print(); // print a HugeInteger
private:
    vector integer;
    const int tenThousand = 10000;
}; // end class HugeInteger


// constructor; construct a zero HugeInteger with size n
HugeInteger::HugeInteger(unsigned int n)
    : integer((n == 0) ? 1 : n)
{
}

// copy constructor; constructs a HugeInteger with a copy of each of the elements in integerToCopy
HugeInteger::HugeInteger(const HugeInteger& integerToCopy)
    : integer(integerToCopy.integer)
{
}

// Constructs a HugeInteger with right.size() elements.
// Each element is initialized as the correcponding element in right.
HugeInteger::HugeInteger(string str)
{
    int digits[1011] = {};
    size_t last = str.size() - 1;
    for (size_t i = 0; i <= last; ++i)
        digits[i] = static_cast<int>(str[last - i]) - '0';

    for (size_t i = 0; i <= last; i += 4)
    {
        int bigDigit = digits[i] +
            digits[i + 1] * 10 +
            digits[i + 2] * 100 +
            digits[i + 3] * 1000;

        integer.insert(integer.end(), bigDigit);
    }
}

// destructor; destroys the HugeInteger
HugeInteger::~HugeInteger()
{
}

// overloaded assignment operator;
// const return avoids: ( a1 = a2 ) = a3
const HugeInteger& HugeInteger::assign(const HugeInteger& right)
{
    if (&right != this) // avoid self-assignment
        integer.assign(right.integer);

    return *this; // enables x = y = z, for example
}

// function that tests if two HugeIntegers are equal
bool HugeInteger::equal(const HugeInteger& right) const
{
    return integer.equal(right.integer);
}

// function that tests if one HugeInteger is less than another
bool HugeInteger::less(const HugeInteger& right) const
{
    if (integer.size() > right.integer.size()) {
        return false;
    }
    else if (integer.size() < right.integer.size()) {
        return true;
    }
    else {
        for (int i = integer.size(); i >= 0; i--) {
            if (integer.begin()[i - 1] > right.integer.begin()[i - 1]) {
                return false;
            }
            else if (integer.begin()[i - 1] < right.integer.begin()[i - 1]) {
                return true;
            }
        }
        return false;
    }
}

HugeInteger HugeInteger::square()
{
    HugeInteger zero;
    if (isZero())
        return zero;

    //這裡的integer是ppt裡的sqrt(middle)
    //這裡的square是ppt裡的square(sqrt的平方)
    size_t squareSize = 2 * integer.size();
    HugeInteger square(squareSize);
    for (int i = 0; i < integer.size(); i++) {
        for (int j = 0; j < integer.size(); j++) {
            square.integer.begin()[i + j] += integer.begin()[i] * integer.begin()[j];
        }//1.不寫.begin()，直接寫myData.myFirst？//
    }
    for (int i = 0; i < square.integer.size() - 1; i++) {
        if (square.integer.begin()[i] >= 10000) {
            square.integer.begin()[i + 1] += square.integer.begin()[i] / 10000;
            square.integer.begin()[i] %= 10000;
        }
    }
    while (square.integer.begin()[square.integer.size() - 1] == 0) { //2.if？//
        square.integer.erase(square.integer.begin() + square.integer.size() - 1);//3.為何不能直接呼叫erase//
        //不能寫erase(square.integer.begin() + square.integer.size() - 1)，因為erase是class vector裡的函式，不能直接在class HugeInteger裡的函式宣告
        //不能寫integer.erase(square.integer.begin() + square.integer.size() - 1)，這樣等於是在刪平方前的數字
        //不能在erase括號裡寫(square.integer.begin()[square.integer.size() - 1])，因為這一長串回傳的是值，不是地址
    }

    return square;
}

HugeInteger HugeInteger::squareRoot()
{
    HugeInteger zero;
    if (isZero())
        return zero;

    size_t sqrtSize = (integer.size() + 1) / 2;
    HugeInteger sqrt(sqrtSize);

    //這裡的integer是ppt的hugeInt
    //這裡的sqrt是ppt裡的middle
    HugeInteger temp(integer.size());
    for (int i = sqrtSize - 1; i >= 0; i--) {
        int low = 0, high = 9999;
        while (low <= high) {
            sqrt.integer.begin()[i] = (low + high) / 2;
            temp.assign(sqrt.square());//可避免TLE
            if (equal(temp)) {
                return sqrt;//4.寫break？//
            }
            else if (less(temp)) {
                high = sqrt.integer.begin()[i] - 1;
            }
            else {
                low = sqrt.integer.begin()[i] + 1;
            }
        }
        if (less(sqrt.square())) {//5.用while？//6.甚麼情況會用到？
            sqrt.integer.begin()[i] -= 1;
        }
    }



    return sqrt;
}

// function that tests if a HugeInteger is zero
bool HugeInteger::isZero() const
{
    typename vector::const_iterator it = integer.begin();
    for (; it != integer.end(); ++it)
        if (*it != 0)
            return false;

    return true;
}

void HugeInteger::print()
{
    typename vector::iterator it = integer.end() - 1;
    cout << *it;
    for (--it; it != integer.begin() - 1; --it)
        cout << setw(4) << setfill('0') << *it;
    cout << endl;
}

int main()
{
    int numCases;
    cin >> numCases;
    for (int i = 1; i <= numCases; ++i)
    {
        string str;
        cin >> str;

        HugeInteger hugeInteger(str);

        hugeInteger.squareRoot().print();

        if (i < numCases)
            cout << endl;
    }
}
