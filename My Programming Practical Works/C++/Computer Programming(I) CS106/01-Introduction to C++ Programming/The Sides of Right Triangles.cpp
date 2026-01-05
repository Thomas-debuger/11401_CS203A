#include <iostream>
using namespace std; 

int main()
{
   int side1, side2, side3;
   cin >> side1 >> side2 >> side3;
   int a = side1*side1;
   int b = side2*side2;
   int c = side3*side3;
   if(c=a+b){
   	cout << "These integers form a right triangle";
   }
   else{
   	cout << "These integers do not form a right triangle";
   }
   cout << '\n';
}
