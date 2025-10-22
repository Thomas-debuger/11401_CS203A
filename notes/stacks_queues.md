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

