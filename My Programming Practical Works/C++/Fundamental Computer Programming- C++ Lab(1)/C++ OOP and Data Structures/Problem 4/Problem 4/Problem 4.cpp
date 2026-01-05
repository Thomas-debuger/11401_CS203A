#include <iostream>
using namespace std;
class Shape {
public:
    virtual double calculateArea()
    {
        return 0;
    }
};
class Rectangle : public Shape {
private:
    int length, breadth;
public:
    double calculateArea() override
    {
        cin >> length;
        cin >> breadth;
        return length * breadth;
    }
};
class Circle : public Shape{
private:
    int radius;
    double pi = 3.14;
public:
    double calculateArea() override
    {
        cin >> radius;
        return radius * radius * pi;
    }
};
int main()
{
    Rectangle rectangle;
    double Area1 = rectangle.calculateArea();
    cout << Area1 << endl;
    Circle circle;
    double Area2 = circle.calculateArea();
    cout << Area2;
}
