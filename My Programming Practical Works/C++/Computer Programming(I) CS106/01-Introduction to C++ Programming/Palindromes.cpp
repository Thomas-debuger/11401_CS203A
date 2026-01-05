#include <iostream>
using namespace std; 

int main()
{
   int number;
   cin >> number;
   int arr[5];
   arr[0] = number/10000;
   arr[1] = (number%10000)/1000;
   arr[3] = (number%100)/10;
   arr[4] = number%10;
   if(arr[1]==arr[3] && arr[0]==arr[4]){
   	cout << "palindrome";
   }
   else{
   	cout << "non-palindrome";
   }
   cout << '\n';
}
