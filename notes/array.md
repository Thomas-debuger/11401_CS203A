# p.10
陣列的本質就是很多個 <索引, 值> 的組合。  
EX：A = [10, 20, 30] ， 對應 pairs = { <0,10>, <1,20>, <2,30> }
一維時，索引就是 {0, …, n-1}。二維時，索引是 {(0,0), (0,1), …}。

## Create(j, list)
建立一個 j 維陣列。list 代表每一維的大小。   
例：Create(2, (3,4)) → 建立一個 3×4 的二維陣列。

## Retrieve(A, i)
取出陣列 A 中索引 i 的值。   
例：Retrieve(A,2) → 回傳 A[2]。

## Store(A, i, x)
把值 x 存到陣列 A 的第 i 個位置。   
例：Store(A,1,99) → A[1] = 99。

## 其中Retrieve(A, i)跟Store(A, i, x)裡的i也能用二維或三維的方式表示

# p.11-14 動態宣告   
int array;   
array = (int *) malloc(n * sizeof(int)); `宣告動態陣列`   
array = (int *) realloc(array, n * sizeof(int)); `修改陣列大小`   

# p.20 程式碼解釋   
printf("Initial memory address: %p\n", (void*)array);   
- `%p 是 印出指標 (pointer) 的記憶體位址。`   
- `(void*)array：把 array 轉成 void*，因為 %p 需要的是 void* 類型的指標。`   
- `這行會印出你用 malloc 分配的陣列 起始位址（也就是陣列第一個元素 array[0] 的位址）。`  

printf("Initial memory end address : %p\n", (void*)(array + n * sizeof(int) - 1));   
- `這行會印出你用 malloc 分配的陣列 終點位址（也就是陣列第一個元素 array[n-1] 的位址）。`   
- `chatgpt說這樣寫才對：printf("Initial memory end address : %p\n", (void*)(array + n - 1));`   

free(array);   
- `釋放先前用 malloc 分配的記憶體，避免 記憶體洩漏。`  
- `釋放後 array 仍然存在，但指向的記憶體已經無效，再使用會造成 未定義行為。`

# p.21 計算記憶體地址   
最後位置 = 起始位置 + (陣列大小 * sizeof(型態)) - 1 (記得是用16進位算)。   

# p.23 記憶體問題   
**將動態陣列重新分配到原始大小的兩倍後，起始記憶體位址會保持不變，還是會改變？**   

原位擴展成功  
`如果原本區塊後面剛好有足夠的連續空間，realloc 會直接在原地擴展。`  
`這樣 起始位址保持不變。`  

原位擴展失敗  
`如果後面沒有空間，realloc 會在記憶體的別處 配置一塊新的區塊，然後把舊資料複製過去，再釋放原來的區塊。`  
`這樣 起始位址會改變。`  

# p.34 bubble sort
```
#include <stdio.h>  
15 hours ago

Update array.md
#include <stdlib.h>  
int main()  
{  
    int *a = (int*) malloc(10*sizeof(int));  
    int v[10] = {5,6,8,9,7,10,1,3,2,4};  
    for(int i=0;i<10;i++){  
        a[i]=v[i];  
    }  
    for(int i=1;i<10;i++){  
        for(int j=0;j<10-i;j++){  
            if(a[j]>a[j+1]){  
                int temp = a[j];  
                a[j] = a[j+1];  
                a[j+1] = temp;  
            }  
        }  
    }  
    for(int i=0;i<10;i++){  
        printf("%d ",a[i]);  
    }  
    return 0;  
15 hours ago

Update array.md
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
# p.38 insertion sort


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
