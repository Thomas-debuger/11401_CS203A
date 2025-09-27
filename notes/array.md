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

