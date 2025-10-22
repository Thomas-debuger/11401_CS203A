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

這段內容是「**用陣列 (Array)** 實作 **Queue（佇列）**」的重點摘要，我幫你完整**逐行解釋** 👇

---

## 🧱 一、Queue (Array-based)

用 **固定大小的陣列** 來實作 Queue。
Queue（佇列）的特性是 **FIFO（First In, First Out）**：
➡️ 先進來的資料先被取出。

---

## 🧩 二、變數解釋 (Variables required)

| 名稱                | 意思   | 功能                              |
| ----------------- | ---- | ------------------------------- |
| `queue[MAX_SIZE]` | 陣列空間 | 用來存放佇列裡的資料。                     |
| `front`           | 前端索引 | 指向「第一個元素的前一格」。<br>（因為刪除時要先往後移動） |
| `rear`            | 後端索引 | 指向「最後一個元素」。                     |
| `MAX_SIZE`        | 最大容量 | 陣列可容納的最大數量。                     |
| `count`（可選）       | 元素數量 | 紀錄目前有幾個元素，讓滿/空判斷更容易。            |

📘 **初始化通常是：**

```c
front = 0;
rear = 0;
count = 0;  // 如果有使用 count
```

---

## ⚙️ 三、主要操作 (Operations)

### 1️⃣ Enqueue（加入元素）

把新元素放進尾端。

```c
rear = (rear + 1) % MAX_SIZE;
queue[rear] = value;
```

📘 **重點說明：**

* `rear + 1` 表示移到下一個位置。
* `% MAX_SIZE` 是用來「**循環 (wrap-around)**」，防止超出陣列邊界。
* 將資料 `value` 存入該位置。

---

### 2️⃣ Dequeue（取出元素）

從前端移除並取出資料。

```c
front = (front + 1) % MAX_SIZE;
value = queue[front];
```

📘 **重點說明：**

* `front + 1` 是下一個要取出的元素。
* 同樣 `% MAX_SIZE` 是為了環狀結構。
* 回傳被移除的 `value`。

---

## ⚠️ 四、Extra burden（額外要注意的地方）

### 1️⃣ 要處理「環狀緩衝區 (Circular Buffer)」

因為是陣列固定大小，如果 `rear` 到達尾端（例如索引 MAX_SIZE-1），
下一次再加資料就要「繞回」到索引 0。
這時候就要用：

```c
(rear + 1) % MAX_SIZE
```

來自動回到開頭。

---

### 2️⃣ Overflow（滿）與 Underflow（空）條件

| 狀況               | 條件                               | 說明                |
| ---------------- | -------------------------------- | ----------------- |
| **Overflow（滿）**  | `(rear + 1) % MAX_SIZE == front` | 再插入資料會覆蓋掉未取出的舊資料。 |
| **Underflow（空）** | `front == rear`                  | 沒有任何資料可取出。        |

---

### 3️⃣ 需要兩個指標

* `front` → 控制取出位置
* `rear` → 控制插入位置
  兩者要隨時更新，維持環狀佇列的正確運作。

---

### 4️⃣ （可選）用 `count` 來簡化判斷

有些實作會額外使用 `count` 計數器：

| 狀況 | 條件                  |
| -- | ------------------- |
| 滿  | `count == MAX_SIZE` |
| 空  | `count == 0`        |

這樣就不必依賴 `(rear + 1) % MAX_SIZE == front` 這種判斷式。

---

## 💡 五、整體概念圖

假設 MAX_SIZE = 5，queue = [ , , , , ]

| 動作          | front | rear | 狀況                      |
| ----------- | ----- | ---- | ----------------------- |
| 初始          | 0     | 0    | 空                       |
| Enqueue(10) | 0     | 1    | [10, , , , ]            |
| Enqueue(20) | 0     | 2    | [10,20, , , ]           |
| Dequeue()   | 1     | 2    | [ ,20, , , ]            |
| Enqueue(30) | 1     | 3    | [ ,20,30, , ]           |
| Enqueue(40) | 1     | 4    | [ ,20,30,40, ]          |
| Enqueue(50) | 1     | 0    | [50,20,30,40, ] ← 繞回開頭！ |

---

## ✅ 六、重點整理

| 操作          | 動作                                                           | 條件      |
| ----------- | ------------------------------------------------------------ | ------- |
| **Enqueue** | `rear = (rear + 1) % MAX_SIZE` <br> `queue[rear] = value`    | 若滿則不能插入 |
| **Dequeue** | `front = (front + 1) % MAX_SIZE` <br> `value = queue[front]` | 若空則不能刪除 |
| **滿**       | `(rear + 1) % MAX_SIZE == front`                             |         |
| **空**       | `front == rear`                                              |         |
| **可選**      | `count` 變數簡化判斷                                               |         |

---

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
