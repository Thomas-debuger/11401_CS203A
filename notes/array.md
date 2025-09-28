            }  
        }  
    }  
    for(int i=0;i<10;i++){  
        printf("%d ",a[i]);  
    }  
    return 0;  
}  
```
# p.36 selection sort


```
#include <stdio.h>
#include <stdlib.h>


int main()
{
    int *a = (int*) malloc(10*sizeof(int));
    int v[10] = {5,6,8,9,7,10,1,3,2,4};
    for(int i=0;i<10;i++){
        a[i]=v[i];
    }
    
    for(int i=0;i<10;i++){ //「現在要排第 i 個位置」
        int min = i; //先假設目前 i 這個位置的數字是最小的。
        for(int j=i+1;j<10;j++){ //從 i 的下一個數字開始，一直檢查到最後。
            if(a[j]<a[min]){
                 min = j; //如果找到比目前最小值還小的，就更新 minIndex
            }
        }
        //找到真正的最小值後，跟目前的 A[i] 交換。
        int temp = a[min];
        a[min] = a[i];
        a[i] = temp;
    }
    
    for(int i=0;i<10;i++){
        printf("%d ",a[i]);
    }
    return 0;
}
```
# p.36 insertion sort


```
#include <stdio.h>
#include <stdlib.h>


int main()
{
    int *a = (int*) malloc(10*sizeof(int));
    int v[10] = {5,6,8,9,7,10,1,3,2,4};
    for(int i=0;i<10;i++){
        a[i]=v[i];
    }
    
    for(int i=1;i<10;i++){
        int key = a[i]; //把要插入的那張「新牌」存起來。
        int j = i - 1; //從 i 的前一個位置開始往前找。
        while(j>=0 && a[j]>key){ //如果前面的數字比 key 大，就把它往後挪一格。一直往前檢查，直到遇到比 key 小的數字，或者到開頭。
            a[j+1] = a[j];
            j--;
        }
        a[j+1] = key; //找到正確位置後，把 key 插進去。
    }
    
    for(int i=0;i<10;i++){
        printf("%d ",a[i]);
    }
    return 0;
```


# p.45   


```char *words[3] = {"cat", "dog", "fish"};  array of strings   ```   
This creates an array of pointers, each element being a char*:
words[0] → "cat" (there is a read-only string constant area)   
words[1] → "dog"   
words[2] → "fish"            }  
        }  
    }  
    for(int i=0;i<10;i++){  
        printf("%d ",a[i]);  
    }  
    return 0;  
}  
```
# p.36 selection sort


```
#include <stdio.h>
#include <stdlib.h>


int main()
{
    int *a = (int*) malloc(10*sizeof(int));
    int v[10] = {5,6,8,9,7,10,1,3,2,4};
    for(int i=0;i<10;i++){
        a[i]=v[i];
    }
    
    for(int i=0;i<10;i++){ //「現在要排第 i 個位置」
        int min = i; //先假設目前 i 這個位置的數字是最小的。
        for(int j=i+1;j<10;j++){ //從 i 的下一個數字開始，一直檢查到最後。
            if(a[j]<a[min]){
                 min = j; //如果找到比目前最小值還小的，就更新 minIndex
            }
        }
        //找到真正的最小值後，跟目前的 A[i] 交換。
        int temp = a[min];
        a[min] = a[i];
        a[i] = temp;
    }
    
    for(int i=0;i<10;i++){
        printf("%d ",a[i]);
    }
    return 0;
}
```
# p.36 insertion sort


```
#include <stdio.h>
#include <stdlib.h>


int main()
{
    int *a = (int*) malloc(10*sizeof(int));
    int v[10] = {5,6,8,9,7,10,1,3,2,4};
    for(int i=0;i<10;i++){
        a[i]=v[i];
    }
    
    for(int i=1;i<10;i++){
        int key = a[i]; //把要插入的那張「新牌」存起來。
        int j = i - 1; //從 i 的前一個位置開始往前找。
        while(j>=0 && a[j]>key){ //如果前面的數字比 key 大，就把它往後挪一格。一直往前檢查，直到遇到比 key 小的數字，或者到開頭。
            a[j+1] = a[j];
            j--;
        }
        a[j+1] = key; //找到正確位置後，把 key 插進去。
    }
    
    for(int i=0;i<10;i++){
        printf("%d ",a[i]);
    }
    return 0;
```


# p.45   


```char *words[3] = {"cat", "dog", "fish"};  array of strings   ```   
這會建立一個 指標陣列，每個元素都是 char*：   
words[0] → "cat"    
words[1] → "dog"   
words[2] → "fish"
