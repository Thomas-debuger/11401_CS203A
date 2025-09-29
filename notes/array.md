# p.10
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

# p.50 Bonus   

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
