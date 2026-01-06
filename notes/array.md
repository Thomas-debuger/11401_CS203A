# p.10 Defination
陣列的本質就是很多個 <索引, 值> 的組合。  
EX：A = [10, 20, 30] ， 對應 pairs = { <0,10>, <1,20>, <2,30> }
一維時，索引就是 {0, …, n-1}。二維時，索引是 {(0,0), (0,1), …}。

**Create(j, list)**
建立一個 j 維陣列。list 代表每一維的大小。   
例：Create(2, (3,4)) → 建立一個 3×4 的二維陣列。

**Retrieve(A, i)**
取出陣列 A 中索引 i 的值。   
例：Retrieve(A,2) → 回傳 A[2]。

**Store(A, i, x)**
把值 x 存到陣列 A 的第 i 個位置。   
例：Store(A,1,99) → A[1] = 99。

**其中Retrieve(A, i)跟Store(A, i, x)裡的i也能用二維或三維的方式表示**

# p.11-14 動態宣告   
int *array;   
array = (int *) malloc(n * sizeof(int)); `宣告動態陣列`   
array = (int *) realloc(array, n * sizeof(int)); `修改陣列大小`   

# p.20 程式碼解釋   
printf("Initial memory address: %p\n", (void*)array);   
- `%p 是 印出指標 (pointer) 的記憶體位址。`   
- `(void*)array：把 array 轉成 void*，因為 %p 需要的是 void* 類型的指標。`   
- `這行會印出你用 malloc 分配的陣列 起始位址（也就是陣列第一個元素 array[0] 的位址）。`  

printf("Initial memory end address : %p\n", (void*)(array + n * sizeof(int) - 1));   
- `這行會印出你用 malloc 分配的陣列 終點位址（也就是陣列最後一個元素 array[n-1] 的位址）。`   
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

# p.50 Search   

**Linear Search(已排序跟未排序皆可)**  
`做法：從陣列的第一個元素開始，一個一個往後比對，直到找到目標值或走完整個陣列。`   
`條件：不需要排序，任何陣列都能用。`    
`時間複雜度：最壞情況要比對整個陣列 → O(n)，最好的情況是第一個就找到 → O(1)。`   

**Binary Search(僅已排序可用)**  
`做法：必須要在「已排序」的陣列裡才行。`
- `每次取陣列的中間元素，比對：`   
- `如果目標值比中間小 → 去左半邊找`   
- `如果目標值比中間大 → 去右半邊找 `  
- `如果剛好等於 → 找到`

`條件：陣列必須是「已排序」的。`   
`時間複雜度：每次把搜尋範圍砍半 → O(log n)。`   

# p.54 Bonus   

1-1.   
靜態陣列（static）：`大小在編譯期間決定（如 int a[10];）。通常配置在 stack（或全域區）。適合大小已知且不會變的情況。優點：宣告簡單、速度快；缺點：彈性差（大小不可變）。`   
動態陣列（dynamic）：`大小在執行期間決定（如 int *a = malloc(n*sizeof(int));）。配置在 heap。適合大小不確定或會變的情況（例如讀檔、使用者輸入）。優點：彈性大；缺點：要手動管理記憶體，出錯會漏記憶體或當機。`   
常見錯誤：`在 stack 宣告超大陣列導致 stack overflow；忘記 free 動態陣列導致 memory leak。`   

1-2.   
陣列是連續記憶體區塊（元素一個接一個），這是陣列能 O(1) 隨機存取的原因。   
stack（堆疊）：`函式內宣告的靜態陣列通常放這裡，分配/釋放由系統自動（函式進入/離開）。空間有限，速度快。`   
heap（堆區）：`malloc/calloc/realloc 分配，由你控制釋放。空間大、彈性高，但需要管理。`   

1-3.   
CPU 有快取（L1/L2/L3）。當資料連續排列時，讀一個元素常常把附近的元素也載入 cache（spatial locality），下次存取相鄰元素速度就快。   
陣列的 連續性 讓 CPU 快取命中率高，所以迴圈處理陣列很快。相反，鏈結串列節點分散在記憶體，快取命中率差。   
實務建議：`在迴圈中以索引順序（從小到大）遍歷陣列比亂序訪問快；儘量避免跳躍性訪問大陣列。`   

2-1.   
線性搜尋（Linear Search）：`從頭到尾檢查每個元素，時間 O(n)。適合未排序陣列或小陣列。實作簡單。`   
二分搜尋（Binary Search）：`針對已排序陣列，每次把範圍對半縮小，時間 O(log n)。必要條件：陣列必須已排序。`   

2-2.   
Bubble Sort（泡泡）：`相鄰比較並交換，當資料幾乎亂序時慢，複雜度 O(n²)。穩定（stable）。`   
Selection Sort（選擇）：`每次找最小值放到前面，O(n²)。不穩定（通常）。優點是交換次數少。`   
Insertion Sort（插入）：`把每個元素插到前面已排序區域，O(n²) 最壞，但對部分已排序資料接近 O(n)。穩定，適合小資料或 nearly-sorted。`   

2-3.   
插入（在索引 i 插入 x）：`需要把 i..n-1 向後移動一格，再放 x → 時間 O(n)（平均移動 n/2 個）。`   
刪除（刪除索引 i）：`把 i+1..n-1 向前移動 → O(n)。`   
resize（增加容量）：`使用 realloc。若原空間後面空間不足，realloc 會在 heap 上分配新區塊並複製舊資料，然後釋放舊區塊 → 複製成本 O(n)。`   

# p.55 Bonus   

3-1.   
malloc(size)：`分配一塊未初始化記憶體（內容不確定）。`   
calloc(count, size)：`分配 count 個 size 大小的區塊，並把所有位元設 0（初始化為 0）。`   
realloc(ptr, newsize)：`重新調整先前 ptr 的大小；可能在原地擴展（同位址），或搬移到新位址（返回新指標）；失敗回傳 NULL（舊指標仍然有效）。`   
```
int *p = malloc(10 * sizeof(int));
int *q = calloc(10, sizeof(int)); // 全 0
p = realloc(p, 20 * sizeof(int)); // 擴大
free(p);
```

3-2.   
memory leak = 分配了 heap 記憶體但不釋放（或丟失指標），導致記憶體越來越少。長時間執行程式或多次分配會耗盡記憶體。   
避免方式：`每次 malloc/calloc/realloc 最終都要 free；在多重錯誤路徑中確保都會釋放；在 C++ 用 RAII（例如 std::vector/std::unique_ptr）自動管理。`   

3-3.   
每次 malloc/calloc/realloc 後 都要檢查回傳是否為 NULL。如果為 NULL，應該安全處理：釋放已分配資源、報錯並中止或退回錯誤碼。   
realloc 的特殊：`不要這樣寫 p = realloc(p, newsize);（直接覆蓋會在 realloc 失敗時丟失原指標）；應先用暫存指標：`   
```
int *tmp = realloc(p, newsize);
if (tmp == NULL) {
  // realloc 失敗，p 仍然有效，先處理錯誤
} else {
  p = tmp;
}
```
**補充：**   
```
int *arr = malloc(10 * sizeof(int));
arr = realloc(arr, 20 * sizeof(int));  // ❌ 危險！
```
假設：   
- 原本 arr 指向一塊有效的記憶體（10 個 int）。   
- 你呼叫 realloc 要求擴充到 20 個 int。   
- 但 系統找不到夠大的連續記憶體空間，realloc 失敗了。

失敗時 realloc 會回傳什麼？   
- realloc 在失敗時回傳 NULL。   
- 但注意：原本那塊記憶體並不會自動釋放，還是有效的。

問題出在哪裡？   
```arr = realloc(arr, 20 * sizeof(int));```  

這會做兩件事：
- 呼叫 realloc → 失敗 → 回傳 NULL。   
- 把 arr 覆蓋成 NULL。   

結果：   
- 原本的 arr（10 個 int 的記憶體）還存在，但你已經沒有指標指向它了。   
- 這就是 memory leak（記憶體洩漏）：記憶體還在，但你再也拿不到了。

正確安全的寫法：
```
int *tmp = realloc(arr, 20 * sizeof(int));
if (tmp == NULL) {
    // realloc 失敗：arr 依然有效，你還可以用或 free
    printf("Realloc failed!\n");
} else {
    // realloc 成功：更新 arr
    arr = tmp;
}
```

這樣做的好處：   
如果失敗，原本的 arr 不會丟失，你還能安全地 free(arr)。   
如果成功，才更新 arr。   

4-1.  
Access（用索引隨機存取）: O(1)  
Update（覆蓋某索引）: O(1)  
Insert/ Delete（在任意位置）: O(n)（需搬移元素）  
Search（未排序）: O(n)；（排序後二分搜尋）: O(log n)  
Traverse（遍歷陣列）: O(n)  

4-2.
陣列需要連續 O(n) 空間。若使用動態結構（例如 vector），通常會保留額外 capacity（例如 2×擴容），短期內多占些空間以節省擴容成本。  
相較之下，鏈結串列每個節點額外需要指標（指標空間 overhead），若 n 很大，linked list 的空間可能比陣列差。  

4-3.  
最適合：大量隨機存取或線性掃描（例如數值運算、矩陣處理、排序前處理）。  
不適合：頻繁在中間插入/刪除（例如在隊列中間頻繁插入），這時鏈結串列或樹更好。  
實務提示：若操作是「尾端加入/刪除」且需要隨機存取，用 vector（動態陣列）通常最好。  

# 補充： 
**時間複雜度：**  
快到慢：O(1) < O(log n) < O(n) < O(n log n) < O(n²) < O(n³) < O(2ⁿ) < O(n!) (O(1)最快，O(n!)最慢)   
Bubble sort：O(n平方)   
Selection sort：O(n平方)   
Insertion sort：O(n平方)   
