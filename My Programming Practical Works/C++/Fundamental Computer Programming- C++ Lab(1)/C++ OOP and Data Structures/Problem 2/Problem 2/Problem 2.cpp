#include <iostream>
#include <vector>
using namespace std;
class NumberList {
private:
    vector <int> numbers;
public:
    void addNumber(int n)
    {
        numbers.push_back(n);
    }
    void removeOddNumbers()
    {
        for (int i = 0; i < numbers.size(); i++) {//
            if (numbers[i] % 2 != 0) {
                numbers.erase(numbers.begin() + i);
                i--;
            }
        }
    }
    void displayNumbers()
    {
        for (int i = 0; i < numbers.size(); i++) {//
            cout << numbers[i] << " ";
        }
    }
};
int main()
{
    int n;
    NumberList numberlist;
    for (int i = 0; i < 10; i++) {
        cin >> n;
        numberlist.addNumber(n);
    }
    numberlist.removeOddNumbers();
    numberlist.displayNumbers();
}

