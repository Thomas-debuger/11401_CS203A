#include <iostream>
#include <stack>
using namespace std;
class StackOperations {
private:
    stack <int> data;
    int arr[3];
public:
    void push(int n) {
        data.push(n);
    }
    void pop() {
        for (int i = 0; i < 2; i++) {
            data.pop();
        }
    }
    void displayStack() {
        for (int i = 0; i < 3; i++) {
            arr[i] = data.top();
            data.pop();
        }
        for (int i = 2; i >= 0; i--) {
            cout << arr[i] << " ";
        }
        cout << endl;
    }
    void displayStackblabla() {
        for (int i = 0; i < 3; i++) {
            cout << arr[i] << " ";
        }
    }
};
int main()
{
    int n;
    StackOperations stackoperations;
    for (int i = 0; i < 5; i++) {
        cin >> n;
        stackoperations.push(n);
    }
    stackoperations.pop();
    stackoperations.displayStack();
    stackoperations.displayStackblabla();
}

