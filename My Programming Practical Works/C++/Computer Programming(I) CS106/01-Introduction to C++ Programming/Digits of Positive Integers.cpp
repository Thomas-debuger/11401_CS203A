#include <iostream>
using namespace std;

int main()
{
   int number;
   cin >> number;
   int arr[5];
   arr[0] = number/10000;
   arr[1] = (number%10000)/1000;
   arr[2] = (number%1000)/100;
   arr[3] = (number%100)/10;
   arr[4] = number%10;
   for(int i=0;i<5;i++){
     if(i>0){
   		cout << " " ;
     }
   		cout << arr[i];
   }
   cout << endl;
   return 0;
}
