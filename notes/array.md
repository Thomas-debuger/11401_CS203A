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
