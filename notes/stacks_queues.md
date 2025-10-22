## p.14 Stack   

Defination of Stack：Stack是一種線性資料結構，遵循後進先出的規則(LIFO)，最後放入的元素會最先被取出。   

## p.16 ADT: Stack   

`Stack Creates(maxStackSize)：創建一個空的stack，最多可以放入maxStackSize個元素。`    
`Boolean isFull(stack,maxStackSize)：如果stack裡的元素數量等於maxStackSize，回傳true，否則回傳false。`   
`Boolean isEmpty(stack)：如果stack的狀態和剛建立的空堆疊相同，回傳true，否則回傳false。`   
`Stack Push(stack)：如果stack容量已滿，觸發錯誤訊息"stackFull"表示堆疊已滿，否則插入元素至頂端top並回傳更新後的stack。`   
`Stack pop(Stack)：如果stack是空的，直接return，否則移出並回傳最上層的元素。`   

## p.17 Queue    

Defination of Queue：Queue是一種線性資料結構，遵循先進先出的規則(FIFO)，最先放入的元素會最先被取出。   

## p.19 ADT: Queue    
`Queue Creates(maxQueueSize)：創建一個空的queue，最多可以放入maxQueueSize個元素。`   
`Boolean isFull(queue,maxQueueSize)：如果queue裡的元素數量等於maxQueueSize，回傳true，否則回傳false。`   
`Boolean isEmpty(queue)：如果queue的狀態和剛建立的空佇列相同，回傳true，否則回傳false。`   
`Queue Add(queue)：如果佇列容量已滿，觸發錯誤訊息"QueueFall"表示容量已滿，否則插入元素至序列最後方。`   
`Queue Delete(queue)：如果佇列是空的，直接return，否則移出並回傳最前面的元素。`   

## p.22 Stack (Array-based)   

這段是在講 **用陣列 (Array)** 來實作 **Stack（堆疊）** 的方式。

---

## 🧱 一、Stack (Array-based) 是什麼？

> 用「**固定大小的陣列 (array)**」來當作堆疊的儲存空間。
> 這是一種最基本、最直接的實作方式。

---

## 📦 二、需要的變數 (Variables required)

| 名稱                | 型態 | 說明              |
| ----------------- | -- | --------------- |
| `stack[MAX_SIZE]` | 陣列 | 用來存放堆疊中的資料。     |
| `top`             | 整數 | 指向「目前頂端元素」的索引值。 |
| `MAX_SIZE`        | 常數 | 陣列能容納的最大容量。     |

📌 **初始狀態：**

```text
top = -1   // 表示堆疊是空的
```

---

## ⚙️ 三、主要操作 (Operations)

---

### 1️⃣ Push（放入元素）

> 將新元素放到堆疊的頂端。

步驟：

1. 先檢查堆疊有沒有滿：`top < MAX_SIZE - 1`
2. 如果還沒滿 → 把 `top` 先加 1
3. 再把新值放入 `stack[top]`

📘 公式：

```c
stack[++top] = value;
```

🧩 範例：

```text
top = -1
Push(10) → stack[0] = 10, top = 0
Push(20) → stack[1] = 20, top = 1
```

---

### 2️⃣ Pop（取出頂端元素）

> 把最上面的元素取出並刪除。

步驟：

1. 先檢查堆疊是否為空：`top >= 0`
2. 取出頂端元素：`value = stack[top]`
3. 把 `top` 減 1

📘 公式：

```c
value = stack[top--];
```

🧩 範例：

```text
stack = [10, 20], top = 1
Pop() → 取出 20，top 變成 0
```

---

### 3️⃣ Peek（查看頂端元素）

> 只看最上面的元素，不刪除。

📘 公式：

```c
return stack[top];
```

🧩 範例：

```text
stack = [10, 20], top = 1
Peek() → 回傳 20，不改變 top
```

---

## ⚠️ 四、Extra Burden（額外負擔）

### (1) Overflow（溢位）

堆疊滿時再 Push，就會超出陣列範圍。

📘 檢查條件：

```c
if (top == MAX_SIZE - 1)
    // Stack Overflow
```

---

### (2) Underflow（下溢）

堆疊空時再 Pop，就沒有東西可取。

📘 檢查條件：

```c
if (top == -1)
    // Stack Underflow
```

---

### (3) Resizing（動態擴充）

如果想讓堆疊可自動變大（像 Python list 那樣），
需要：

1. 建立更大的新陣列
2. 把舊資料複製過去

這會增加執行時間（需要額外記憶體與複製動作）。

---

## 💻 五、完整 C 範例程式

```c
#include <stdio.h>
#define MAX_SIZE 5

int stack[MAX_SIZE];
int top = -1;

void Push(int value) {
    if (top == MAX_SIZE - 1) {
        printf("Stack Overflow!\n");
    } else {
        stack[++top] = value;
        printf("Pushed %d\n", value);
    }
}

int Pop() {
    if (top == -1) {
        printf("Stack Underflow!\n");
        return -1;
    } else {
        return stack[top--];
    }
}

int Peek() {
    if (top == -1) {
        printf("Stack is empty.\n");
        return -1;
    }
    return stack[top];
}

int main() {
    Push(10);
    Push(20);
    Push(30);
    printf("Top = %d\n", Peek());
    printf("Pop = %d\n", Pop());
    printf("Top = %d\n", Peek());
}
```

---

## ✅ 六、重點整理表

| 操作        | 條件                | 動作                   | 結果      |
| --------- | ----------------- | -------------------- | ------- |
| Push      | top < MAX_SIZE-1  | stack[++top] = value | 加入頂端    |
| Pop       | top >= 0          | value = stack[top--] | 取出頂端    |
| Peek      | top >= 0          | return stack[top]    | 看頂端     |
| Overflow  | top == MAX_SIZE-1 | 錯誤                   | 無法 Push |
| Underflow | top == -1         | 錯誤                   | 無法 Pop  |

---

## p.23 Queue (Array-based)   

`front → index of the first element`、`rear → index of the last element`）。

---

# 🧩 Queue (Array-based)

## 📦 Variables required

* `queue[MAX_SIZE]` → 實際的陣列儲存空間。
* `front` → **第一個有效元素的索引（front element）**。
* `rear` → **最後一個有效元素的索引（rear element）**。
* `MAX_SIZE` → 佇列的最大容量。
* （可選）`count` → 當前元素個數，用來簡化空/滿判斷（非必要）。

---

## ⚙️ Initialization（初始化）

```c
front = -1;
rear  = -1;
```

* 表示目前佇列為 **空**。
* 任何 Enqueue 時都要從這個狀態開始。

---

## 🧭 Operations

### 🟢 Enqueue（入列：在尾端加入元素）

將一個新元素加到 **佇列尾端（rear）**。

**步驟**

1. 先檢查是否「滿」：

   ```c
   if ((rear + 1) % MAX_SIZE == front)
       // Queue is full (Overflow)
   ```
2. 若為空佇列（`front == -1`），設定 `front = 0`。
3. 更新 `rear`：

   ```c
   rear = (rear + 1) % MAX_SIZE;
   queue[rear] = value;
   ```

**例子**

```c
void Enqueue(int value) {
    if ((rear + 1) % MAX_SIZE == front) {
        printf("Queue Overflow\n");
        return;
    }
    if (front == -1) front = 0;      // 佇列原本是空的
    rear = (rear + 1) % MAX_SIZE;    // 移動 rear（用環狀運算）
    queue[rear] = value;             // 放入資料
}
```

---

### 🔴 Dequeue（出列：移除最前面的元素）

從 **佇列前端（front）** 移除並回傳一個元素。

**步驟**

1. 檢查是否「空」：

   ```c
   if (front == -1)
       // Queue is empty (Underflow)
   ```
2. 取出要刪除的值：

   ```c
   value = queue[front];
   ```
3. 若這是最後一個元素（`front == rear`），佇列變空：

   ```c
   front = rear = -1;
   ```
4. 否則更新 front：

   ```c
   front = (front + 1) % MAX_SIZE;
   ```

**例子**

```c
int Dequeue() {
    if (front == -1) {
        printf("Queue Underflow\n");
        return -1;
    }
    int value = queue[front];
    if (front == rear) {
        front = rear = -1;           // 刪除後變空
    } else {
        front = (front + 1) % MAX_SIZE;  // 向前移動 front
    }
    return value;
}
```

---

### 👀 Peek（查看第一個元素，不刪除）

```c
int Front() {
    if (front == -1) {
        printf("Queue is empty\n");
        return -1;
    }
    return queue[front];
}
```

---

## ⚡ Conditions

| 狀況                | 判斷條件                             |
| ----------------- | -------------------------------- |
| **Overflow (滿)**  | `(rear + 1) % MAX_SIZE == front` |
| **Underflow (空)** | `front == -1`                    |

---

## 🌀 Extra Burden（額外負擔）

* 必須管理 **環狀緩衝區邏輯**（circular buffer），使用 % MAX_SIZE 讓 front 和 rear 能在尾端「繞回」開頭。
* 檢查溢出（overflow）與欠流（underflow）的條件。   
  Overflow condition:(rear + 1) % MAX_SIZE == front   
  Underflow condition:front == rear   
* 需要兩個指標（`front`、`rear`），有時加上 `count` 變數會更容易。

---

## 💡 Example (MAX_SIZE = 5)

假設初始：

```
queue = [ , , , , ]
index = [0,1,2,3,4]
front = -1
rear  = -1
```

1️⃣ `Enqueue(10)` → front=0, rear=0 → queue=[10, , , , ]   
2️⃣ `Enqueue(20)` → rear=1 → queue=[10,20, , , ]   
3️⃣ `Enqueue(30)` → rear=2 → queue=[10,20,30, , ]   
4️⃣ `Dequeue()` → front=1 → queue=[10,20,30, , ]（有效元素從 index=1 開始）   
5️⃣ `Enqueue(40)` → rear=3 → queue=[10,20,30,40, ]   
6️⃣ `Enqueue(50)` → rear=4 → queue=[10,20,30,40,50]   
7️⃣ `Enqueue(60)` → rear=(4+1)%5=0（環狀回繞）   

---

| 操作          | front | rear | queue[] 狀態                    |
| :---------- | :---: | :--: | :---------------------------- |
| 初始          |   -1  |  -1  | [ , , , , ]                   |
| Enqueue(10) |   0   |   0  | [10, , , , ]                  |
| Enqueue(20) |   0   |   1  | [10,20, , , ]                 |
| Enqueue(30) |   0   |   2  | [10,20,30, , ]                |
| Dequeue()   |   1   |   2  | [10,20,30, , ] → 有效元素 [20,30] |
| Enqueue(40) |   1   |   3  | [10,20,30,40, ]               |
| Enqueue(50) |   1   |   4  | [10,20,30,40,50]              |
| Enqueue(60) |   1   |   0  | [60,20,30,40,50] （繞回）         |

---

## 🧮 Complexity

| Operation | Time | Space       |
| --------- | ---- | ----------- |
| Enqueue   | O(1) | O(MAX_SIZE) |
| Dequeue   | O(1) | O(MAX_SIZE) |


## p.23 補充   

✅ 對！你的理解完全正確 👏

當 `MAX_SIZE = 5` 時，`queue` 是一個 **可以存放 5 個元素的陣列**，
那它的「**索引（index）**」就是：

```
index:  [0] [1] [2] [3] [4]
queue:  [  ] [  ] [  ] [  ] [  ]
```

這五個位置分別是 `queue[0]`, `queue[1]`, `queue[2]`, `queue[3]`, `queue[4]`。
裡面目前是空的（還沒放任何資料）。

---

### 🔹 接下來要注意的是：

在 **環狀佇列 (Circular Queue)** 裡，
`front` 和 `rear` 都是用來記錄「索引位置」，而不是儲存資料。

---

### 📘 例子：

假設：

```c
MAX_SIZE = 5;
front = 0;
rear = 0;
```

那表示：

```
queue = [ , , , , ]
index = [0,1,2,3,4]
```

此時是「空佇列」，因為 `front == rear`。

---

### ➕ Enqueue 一次（放入一個值，例如 10）

```c
rear = (rear + 1) % MAX_SIZE;  // (0 + 1) % 5 = 1
queue[rear] = 10;
```

現在：

```
queue = [ ,10, , , ]
index = [0,1,2,3,4]
front = 0
rear  = 1
```

---

### ➕ 再 Enqueue(20)

```c
rear = (rear + 1) % MAX_SIZE;  // (1 + 1) % 5 = 2
queue[rear] = 20;
```

```
queue = [ ,10,20, , ]
index = [0,1,2,3,4]
front = 0
rear  = 2
```

---

### ➖ Dequeue 一次（取出最前面那個）

```c
front = (front + 1) % MAX_SIZE;  // (0 + 1) % 5 = 1
value = queue[front];  // value = 10
```

```
queue = [ ,10,20, , ]   // 資料還在但不算有效
index = [0,1,2,3,4]
front = 1
rear  = 2
```

---

### 🔁 繞回例子：

當 `rear` 在最後一格（index = 4）時再做 Enqueue：

```c
rear = (4 + 1) % 5 = 0;   // 🔄 回到開頭
```

這樣就形成了「**環狀結構 (circular)**」，可以重複使用前面空出的位置。

---

## p.25    

這段是「**以鏈結串列 (Linked List)** 實作 Stack（堆疊）」的重點筆記。

---

## 🧱 一、Stack (Linked List-based)

這個版本的 Stack **不使用固定大小的陣列**，
而是用 **鏈結串列 (Linked List)** 來動態管理記憶體。
➡️ 因此它沒有 MAX_SIZE 限制，可以隨著 push/pop 動態變化。

---

## 🧩 二、變數說明 (Variables required)

| 名稱          | 類型 | 說明                                |
| ----------- | -- | --------------------------------- |
| `Node* top` | 指標 | 指向「堆疊頂端 (stack top)」的節點（鏈結串列的開頭）。 |

---

### 📘 Node 結構通常是這樣：

```c
typedef struct Node {
    int data;
    struct Node* next;
} Node;
```

這樣每個節點都可以存資料 (`data`) 並連到下一個節點 (`next`)。

---

## ⚙️ 三、操作 (Operations)

### 1️⃣ Push（入堆疊）

**動作：**

1. 建立新節點 (`malloc`)
2. 把新節點的 `next` 指向原本的 `top`
3. 把 `top` 更新成新節點

📘 **程式邏輯：**

```c
Node* newNode = (Node*)malloc(sizeof(Node));
newNode->data = value;
newNode->next = top;   // 新節點指向原本的堆疊頂端
top = newNode;         // 更新頂端
```

📈 **堆疊示意圖：**

| Push(10) 後 |            |
| ---------- | ---------- |
| top → [10  | next→NULL] |

| Push(20) 後 |              |            |
| ---------- | ------------ | ---------- |
| top → [20  | next→] → [10 | next→NULL] |

（最新的資料永遠在最上面）

---

### 2️⃣ Pop（出堆疊）

**動作：**

1. 檢查是否為空 (`top != NULL`)
2. 如果不是空的：

   * 暫存目前的 `top`
   * 把 `top` 更新為 `top->next`
   * 釋放原本節點的記憶體 (`free(temp)`)

📘 **程式邏輯：**

```c
if (top != NULL) {
    Node* temp = top;
    top = top->next;  // 將頂端往下移
    free(temp);       // 釋放被移除的節點
}
```

📉 **示意圖：**

| 初始        |              |              |       |
| --------- | ------------ | ------------ | ----- |
| top → [30 | next→] → [20 | next→] → [10 | NULL] |

| Pop 一次後   |              |       |
| --------- | ------------ | ----- |
| top → [20 | next→] → [10 | NULL] |

---

## ⚠️ 四、Extra Burden（額外注意事項）

| 問題                            | 說明                                                           |
| ----------------------------- | ------------------------------------------------------------ |
| **Dynamic memory allocation** | 每次 Push 需要 `malloc()` 新節點，Pop 要 `free()`，記憶體管理很重要。           |
| **Pointer management**        | 要避免「記憶體洩漏 (leak)」或「懸掛指標 (dangling pointer)」。例如：Pop 時忘記釋放舊節點。 |

---

## 🧩 五、和 Array-based 的比較

| 特點                 | Array-based    | Linked List-based |
| ------------------ | -------------- | ----------------- |
| 儲存方式               | 固定大小陣列         | 動態鏈結節點            |
| 是否有容量限制            | ✅ 有 (MAX_SIZE) | ❌ 無               |
| 記憶體配置              | 一次分配整個陣列       | 每次 Push 時動態分配     |
| 操作速度               | 快（陣列索引）        | 稍慢（需 malloc/free） |
| Overflow/Underflow | 需檢查 top 範圍     | 只需檢查 top 是否為 NULL |
| 適合情境               | 已知資料量          | 資料量未知或變動大         |

---

## ✅ 六、完整示例程式 (C)

```c
#include <stdio.h>
#include <stdlib.h>

typedef struct Node {
    int data;
    struct Node* next;
} Node;

Node* top = NULL; // 初始化為空堆疊

void push(int value) {
    Node* newNode = (Node*)malloc(sizeof(Node));
    newNode->data = value;
    newNode->next = top;
    top = newNode;
}

void pop() {
    if (top == NULL) {
        printf("Stack is empty!\n");
        return;
    }
    Node* temp = top;
    printf("Popped: %d\n", temp->data);
    top = top->next;
    free(temp);
}

void display() {
    Node* current = top;
    printf("Stack: ");
    while (current != NULL) {
        printf("%d ", current->data);
        current = current->next;
    }
    printf("\n");
}

int main() {
    push(10);
    push(20);
    push(30);
    display();   // Stack: 30 20 10
    pop();       // Popped: 30
    display();   // Stack: 20 10
    return 0;
}
```

---

## p.26 Queue (Linked List)   

這段講的是 **「用 Linked List 實作 Queue（佇列）」**，
是對比「Array-based Queue」的另一種動態實作方式。

---

## 🧱 一、Queue (Linked List-based)

**概念：**

* 使用 **鏈結串列 (Linked List)** 取代固定大小的陣列。
* 不需要預先設定 `MAX_SIZE`，可以動態增加或刪除節點。
* 遵守 **FIFO（First In, First Out）先進先出** 原則。

---

## 🧩 二、變數 (Variables required)

| 變數名稱          | 型態 | 說明                         |
| ------------- | -- | -------------------------- |
| `Node* front` | 指標 | 指向佇列的「第一個節點」(最前端，要被刪除的地方)。 |
| `Node* rear`  | 指標 | 指向佇列的「最後一個節點」(新加入的地方)。     |

📘 節點結構：

```c
typedef struct Node {
    int data;
    struct Node* next;
} Node;
```

---

## ⚙️ 三、主要操作 (Operations)

### 1️⃣ Enqueue（加入資料 → 尾端）

**步驟：**

1. 建立新節點 `newNode`。
2. 如果佇列不是空的，讓目前的 `rear->next = newNode`。
3. 更新 `rear = newNode`。
4. 若佇列原本是空的，`front` 也要設成這個新節點。

📘 **邏輯範例：**

```c
Node* newNode = (Node*)malloc(sizeof(Node));
newNode->data = value;
newNode->next = NULL;

if (rear == NULL) {       // 佇列是空的
    front = rear = newNode;
} else {
    rear->next = newNode; // 接在尾巴
    rear = newNode;       // rear 移到新節點
}
```

📈 **示意圖：**

```
Enqueue(10): front → [10|NULL], rear → [10]
Enqueue(20): front → [10|●] → [20|NULL], rear → [20]
```

---

### 2️⃣ Dequeue（移除資料 → 前端）

**步驟：**

1. 檢查 `front != NULL`（是否空）。
2. 暫存目前的 `front` 節點。
3. 將 `front = front->next`。
4. 若刪完變空 (`front == NULL`)，則也要設定 `rear = NULL`。
5. 釋放被刪除節點。

📘 **邏輯範例：**

```c
if (front == NULL) {
    printf("Queue is empty!\n");
    return;
}

Node* temp = front;
front = front->next;

if (front == NULL)
    rear = NULL;  // 特殊情況：佇列變空

free(temp);
```

📉 **示意圖：**

```
初始: front → [10|●] → [20|NULL], rear → [20]
Dequeue: 移除10 → front → [20|NULL], rear → [20]
```

---

## ⚠️ 四、Extra Burden（要注意的地方）

| 負擔                        | 說明                                           |
| ------------------------- | -------------------------------------------- |
| **需要兩個指標 (front & rear)** | 若只有一個指標，無法 O(1) 時間找到尾端插入。                    |
| **特別處理空佇列狀況**             | 當最後一個節點被刪除後，要記得 `rear = NULL`。               |
| **動態記憶體開銷**               | 每次 Enqueue 都要 `malloc()`，Dequeue 要 `free()`。 |

---

## 🧩 五、和 Array-based Queue 比較

| 特點                 | Array-based      | Linked List-based   |
| ------------------ | ---------------- | ------------------- |
| 儲存方式               | 固定大小陣列           | 動態節點鏈結              |
| 容量限制               | 有 (`MAX_SIZE`)   | 無                   |
| Overflow/Underflow | 要判斷索引關係          | 只要判斷 front 是否為 NULL |
| Enqueue/Dequeue    | 都是 O(1)，但需管理環狀邏輯 | 都是 O(1)，邏輯較單純       |
| 記憶體管理              | 無需 malloc/free   | 需手動配置與釋放記憶體         |

---

## ✅ 六、完整範例程式 (C)

```c
#include <stdio.h>
#include <stdlib.h>

typedef struct Node {
    int data;
    struct Node* next;
} Node;

Node* front = NULL;
Node* rear = NULL;

void enqueue(int value) {
    Node* newNode = (Node*)malloc(sizeof(Node));
    newNode->data = value;
    newNode->next = NULL;

    if (rear == NULL) {        // 空佇列
        front = rear = newNode;
    } else {
        rear->next = newNode;  // 加到尾端
        rear = newNode;
    }
}

void dequeue() {
    if (front == NULL) {
        printf("Queue is empty!\n");
        return;
    }
    Node* temp = front;
    printf("Dequeued: %d\n", temp->data);
    front = front->next;

    if (front == NULL)         // 若刪完變空
        rear = NULL;

    free(temp);
}

void display() {
    Node* curr = front;
    printf("Queue: ");
    while (curr != NULL) {
        printf("%d ", curr->data);
        curr = curr->next;
    }
    printf("\n");
}

int main() {
    enqueue(10);
    enqueue(20);
    enqueue(30);
    display();   // Queue: 10 20 30
    dequeue();   // Dequeued: 10
    display();   // Queue: 20 30
    dequeue();
    dequeue();
    dequeue();   // Queue is empty!
    return 0;
}
```

---

## 📘 七、動作總結圖（邏輯流程）

| 操作          | 動作      | front      | rear            |
| ----------- | ------- | ---------- | --------------- |
| Enqueue(10) | 新增節點 10 | front→10   | rear→10         |
| Enqueue(20) | 新增節點 20 | front→10   | rear→20         |
| Dequeue()   | 移除節點 10 | front→20   | rear→20         |
| Dequeue()   | 移除節點 20 | front→NULL | rear→NULL (佇列空) |

---

## p.27 Comparison of Stacks and Queues (Arrayvs. Linked List Implementation)   

---

# 堆疊與佇列比較：陣列 vs 鏈結串列

| 特性         | 堆疊 (Stack, LIFO)       | 佇列 (Queue, FIFO)  |
| ---------- | ---------------------- | ----------------- |
| **存取模式**   | 後進先出（最後加入的先移除，操作都在同一端） | 先進先出（從尾端加入，從前端移除） |
| **I/O 方向** | 兩種操作都在頂端進行             | 尾端輸入、前端輸出         |

---

## 陣列實作 (Array Implementation)

| 結構   | 堆疊                                                | 佇列                                                                                               |
| ---- | ------------------------------------------------- | ------------------------------------------------------------------------------------------------ |
| 實作方式 | 固定大小陣列                                            | 固定大小陣列（通常用環狀方式）                                                                                  |
| 操作   | `push`：在尾端加入元素（`top++`）<br>`pop`：從尾端移除元素（`top--`） | `enqueue`：在尾端加入元素（`rear = (rear+1)%MAX_SIZE`）<br>`dequeue`：從前端移除元素（`front = (front+1)%MAX_SIZE`） |
| 限制   | 容量超過會溢出                                           | 環狀陣列滿時會溢出；需管理 `front` 與 `rear` 指標                                                                |
| 備註   | 實作簡單                                              | 為了有效使用空間，需要環狀陣列                                                                                  |

---

## 鏈結串列實作 (Linked List Implementation)

| 結構       | 堆疊                               | 佇列                                     |
| -------- | -------------------------------- | -------------------------------------- |
| 實作方式     | 每個節點指向下一個節點                      | 每個節點指向下一個節點                            |
| 操作       | `push`：在鏈表頭加入元素 <br>`pop`：從頭刪除元素 | `enqueue`：在尾端加入元素 <br>`dequeue`：從頭刪除元素 |
| 記憶體      | 動態配置，無固定大小                       | 動態配置，無固定大小；每個節點多了指標佔用空間                |
| 指標管理     | 只需 `top`                         | 需同時管理 `front` 與 `rear`                 |
| Overflow | 只會在記憶體耗盡時發生                      | 只會在記憶體耗盡時發生                            |

---

## 記憶體管理

| 類型    | 陣列           | 鏈結串列              |
| ----- | ------------ | ----------------- |
| 記憶體使用 | 若陣列未滿，可能浪費空間 | 每個節點多了指標，會佔用額外記憶體 |

---

## 效能 (Performance)

| 操作                 | 陣列             | 鏈結串列                        |
| ------------------ | -------------- | --------------------------- |
| 堆疊 push/pop        | O(1)（不需重新配置陣列） | O(1)（在頭部操作）                 |
| 佇列 enqueue/dequeue | O(1)（環狀緩衝區）    | O(1)（尾端 enqueue，頭部 dequeue） |

---

## 溢出處理 (Overflow Handling)

| 類型   | 堆疊          | 佇列          |
| ---- | ----------- | ----------- |
| 陣列   | 固定大小可能溢出    | 環狀陣列可能溢出    |
| 鏈結串列 | 只有記憶體耗盡才會溢出 | 只有記憶體耗盡才會溢出 |

---

## 常見使用情境 (Use Cases)

| 堆疊         | 佇列                              |
| ---------- | ------------------------------- |
| 復原功能（Undo） | 工作排程（Task Scheduling）           |
| 函式呼叫 / 遞迴  | 資源共享（Resource Sharing）          |
| 表達式求值      | 緩衝區 (Buffering)，例如 I/O 佇列、印表機佇列 |

---
