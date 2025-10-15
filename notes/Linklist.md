## p.16 Linked List in C

---

### 🔹 1. 先看最原始的部分

```c
struct list {
    int integerValue;
    struct list *nextPtr;
};
```

#### 🧠 意思：

這段是在定義一個「結構（structure）」叫做 `struct list`，
它有兩個成員（members）：

| 成員名稱           | 型別              | 說明                 |
| -------------- | --------------- | ------------------ |
| `integerValue` | `int`           | 節點裡要儲存的整數資料        |
| `nextPtr`      | `struct list *` | 指向下一個節點的指標（形成鏈結串列） |

#### 📘 用白話講：

這代表一個「節點（Node）」，裡面有：

1. 一個整數值（資料本體）
2. 一個指標，指向下一個節點（讓它們連起來）

---

### 🔹 2. 接著看後面的 `typedef`

```c
typedef struct list {
    int integerValue;
    struct list *nextPtr;
} IntegerNode;
```

#### 🧠 typedef 是什麼？

`typedef` 是「型別別名（type alias）」的關鍵字。
它可以幫某種型別取一個更簡短、更方便的名字。

#### 🧩 在這裡的用途：

它把 `struct list` 這個結構型別重新命名成 `IntegerNode`。

所以：

```c
IntegerNode
```

和

```c
struct list
```

是**一樣的型別**！

---

### 🔹 3. 使用上的差別

如果沒有 typedef，你宣告變數要寫：

```c
struct list node1;
```

加上 typedef 之後就可以簡寫成：

```c
IntegerNode node1;
```

這樣程式碼更乾淨、好讀。

---

### 🔹 4. 鏈結串列的意義

每一個節點 (`IntegerNode`) 都有一個 `nextPtr`，指向下一個節點。
這樣就能形成：

```
[節點1] → [節點2] → [節點3] → NULL
```

舉例：

```c
IntegerNode a, b, c;

a.integerValue = 10;
b.integerValue = 20;
c.integerValue = 30;

a.nextPtr = &b;
b.nextPtr = &c;
c.nextPtr = NULL;
```

現在：

```
a → b → c → NULL
```

---

### ✅ 小總結

| 元素             | 說明                                   |
| -------------- | ------------------------------------ |
| `struct list`  | 定義鏈結串列的結構                            |
| `integerValue` | 儲存節點的數值                              |
| `nextPtr`      | 指向下一個節點的指標                           |
| `typedef`      | 幫 `struct list` 取別名，改叫 `IntegerNode` |
| 使用方式           | `IntegerNode node1;`                 |

---

## p.17 Linked List in C++

---

## 🔹 程式碼全文

```cpp
class Node {
public:
    int data;
    Node* next;

    Node(int value) {
        data = value;
        next = nullptr;
    }
};
```

---

## 🔸 1. `class Node { ... };` —— 定義一個類別

這行代表定義一個名為 **`Node`** 的「類別」。
在 C++ 裡，類別（class）就像是一種自訂資料型別，可以放變數和函式。

這個類別的用途是：
👉 用來建立「**鏈結串列的節點**」。

---

## 🔸 2. `public:` —— 公開成員

`public:` 代表底下的東西可以在**類別外部**直接使用。
例如你可以寫：

```cpp
Node n(10);
cout << n.data; // 可以直接存取
```

---

## 🔸 3. `int data;` —— 節點要存的資料

這是節點裡的**主要資料**。
在這裡是整數型態 `int`，
所以每個節點都會有一個整數值，例如 5、10、20。

---

## 🔸 4. `Node* next;` —— 指向下一個節點的指標

`Node*` 表示「指向 Node 物件的指標」。

這個指標會用來連接下一個節點。
例如：

```
[10] → [20] → [30] → nullptr
```

---

## 🔸 5. 建構子 `Node(int value) { ... }`

這是類別的 **建構子（constructor）**，
在你建立物件時會**自動執行**。

### 🧠 它的功能：

```cpp
Node(int value) {
    data = value;
    next = nullptr;
}
```

意思是：

1. 把傳進來的數值 `value` 存進節點的 `data` 欄位
2. 把 `next` 設成 `nullptr`（表示目前還沒有下一個節點）

---

## 🔹 6. 建立節點的範例

```cpp
Node a(10);
Node b(20);

a.next = &b;
```

現在的鏈結串列是：

```
a → b → nullptr
```

記憶體概念上像這樣：

| 變數 | data | next    |
| -- | ---- | ------- |
| a  | 10   | 指向 b    |
| b  | 20   | nullptr |

---

## 🔹 7. 對比 C 語言版本

| 語言  | 定義方式                                             | 初始化方式              | 概念差別           |
| --- | ------------------------------------------------ | ------------------ | -------------- |
| C   | `struct list { int value; struct list *next; };` | 用 `malloc` 或手動設定   | 結構沒有建構子，要手動初始化 |
| C++ | `class Node { ... };`                            | 用建構子 `Node(int v)` | 可以自動初始化，程式更乾淨  |

---

## ✅ 小總結

| 成分                | 作用                      |
| ----------------- | ----------------------- |
| `class Node`      | 定義鏈結串列的節點類別             |
| `int data;`       | 節點儲存的整數資料               |
| `Node* next;`     | 指向下一個節點的指標              |
| `Node(int value)` | 建構子：建立節點時設定 data 和 next |
| `nullptr`         | 表示指標沒有指向任何節點            |

---
