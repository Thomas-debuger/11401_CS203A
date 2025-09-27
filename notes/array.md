# p.10 陣列的本質
陣列的本質就是很多個 `<索引, 值>` 的組合。  
範例： `A = [10, 20, 30]` ，對應 pairs = `{ <0,10>, <1,20>, <2,30> }`  
一維時，索引就是 `{0, …, n-1}`；二維時，索引是 `{(0,0), (0,1), …}`。  

## Create(j, list)
建立一個 j 維陣列。list 代表每一維的大小。  
例： `Create(2, (3,4)) → 建立一個 3×4 的二維陣列`  

## Retrieve(A, i)
取出陣列 A 中索引 i 的值。  
例： `Retrieve(A,2) → 回傳 A[2]`  

## Store(A, i, x)
把值 x 存到陣列 A 的第 i 個位置。  
例： `Store(A,1,99) → A[1] = 99`  

## 注意
`Retrieve(A, i)` 和 `Store(A, i, x)` 裡的 `i` 可以是一維索引 (例如 `2`)，也可以是二維 `(2,3)` 或三維 `(1,2,3)`。

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
    
    for(int i=0;i<10;i++){//「現在要排第 i 個位置」
        int min = i;//先假設目前 i 這個位置的數字是最小的。
        for(int j=i+1;j<10;j++){//從 i 的下一個數字開始，一直檢查到最後。
            if(a[j]<a[min]){
                 min = j;//如果找到比目前最小值還小的，就更新 minIndex
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
