#include <iostream>
using namespace std;
class Student {
private:
    int marks[5]{};
    int sum = 0;
    int average = 0;
public:
    void setMarks() {
        for (int i = 0; i < 5; i++) {
            cin >> marks[i];
        }
    }
    void calculateAverage() {
        for (int i = 0; i < 5; i++) {
            sum += marks[i];
        }
        average = sum / 5;
    }
    void displayMarks() {
        for (int i = 0; i < 5; i++) {
            cout << marks[i] << " ";
        }
        cout << endl << average;
    }
};
int main()
{
    Student student;
    student.setMarks();
    student.calculateAverage();
    student.displayMarks();
}
