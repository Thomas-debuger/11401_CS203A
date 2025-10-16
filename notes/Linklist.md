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

## p.18  

---

## 🔹 程式碼全文

```cpp
class LinkedList {
private:
    Node* head;
public:
    LinkedList() {
        head = nullptr;
    }

    // Insert at end
    void insert(int value) {
        Node* newNode = new Node(value);
        if (head == nullptr) {
            head = newNode;
        } else {
            Node* temp = head;
            while (temp->next != nullptr) {
                temp = temp->next;
            }
            temp->next = newNode;
        }
    }
};
```

---

## 🧱 一、這是在定義「LinkedList 類別」

這個類別（class）是整個**鏈結串列**的容器。
裡面包含：

* `head` 👉 串列的開頭（第一個節點）
* 各種操作函式 👉 例如 `insert()`、`print()`、`delete()` 等

你可以想成：

```
[LinkedList物件]
   ↓
  head → [節點1] → [節點2] → [節點3] → nullptr
```

---

## 🔹 二、成員變數

```cpp
private:
    Node* head;
```

* `head` 是指標，指向 **第一個節點 (Node)**。
* `private` 表示這個變數只有類別內部可以使用。
  （外面不能直接 `myList.head`，只能透過函式操作。）

---

## 🔹 三、建構子（Constructor）

```cpp
LinkedList() {
    head = nullptr;
}
```

### 🧠 功能：

當你建立一個新的 `LinkedList` 時，
會自動把 `head` 設成 `nullptr`，代表現在串列是空的。

例如：

```cpp
LinkedList list;
```

此時：

```
head → nullptr
```

---

## 🔹 四、`insert(int value)`：插入節點到尾端

這是這段程式的重點👇

```cpp
void insert(int value) {
    Node* newNode = new Node(value);
```

這行會**動態建立一個新的節點**，內容是：

```
data = value
next = nullptr
```

---

### 🧩 接下來是插入邏輯：

#### 🧠 第一種情況：串列是空的

```cpp
if (head == nullptr) {
    head = newNode;
}
```

如果 `head` 是空的（代表串列目前沒有節點），
那就讓 `head` 指向這個新節點。

現在的狀況：

```
head → [value] → nullptr
```

---

#### 🧠 第二種情況：串列裡已經有節點

```cpp
else {
    Node* temp = head;
    while (temp->next != nullptr) {
        temp = temp->next;
    }
    temp->next = newNode;
}
```

這段意思是：

1. 用一個指標 `temp` 從 `head` 開始。
2. 不斷往下走 (`temp = temp->next`)。
3. 當走到最後一個節點（`next == nullptr`）時，
   就把它的 `next` 指向 `newNode`。

🔍 比喻成一串火車：

```
[10] → [20] → [30] → nullptr
```

要加新車廂 `[40]`，你就從第一節車廂往後走，
直到最後一節，再把 `[40]` 接上去：

```
[10] → [20] → [30] → [40] → nullptr
```

---

## 🔹 五、整體流程圖

當你呼叫：

```cpp
LinkedList list;
list.insert(10);
list.insert(20);
list.insert(30);
```

記憶體關係會變成：

```
head
 ↓
[10] → [20] → [30] → nullptr
```

---

## ✅ 小總結

| 區塊                              | 功能                              |
| ------------------------------- | ------------------------------- |
| `Node* head`                    | 指向串列開頭的指標                       |
| `LinkedList()`                  | 初始化 head = nullptr（空串列）         |
| `insert(int value)`             | 新增節點到鏈結串列尾端                     |
| `new Node(value)`               | 建立新節點（data=value, next=nullptr） |
| `while (temp->next != nullptr)` | 找到最後一個節點                        |
| `temp->next = newNode`          | 把新節點接在最後                        |

---

## p.19-1  


---

## 🔹 程式碼全文

```cpp
// Print the list
void print() {
    Node* temp = head;
    while (temp != nullptr) {
        std::cout << temp->data << " -> ";
        temp = temp->next;
    }
    std::cout << "NULL" << std::endl;
}
```

---

## 🔸 1. 函式功能說明

這個函式 `print()` 的目的：
👉 **把整條鏈結串列的內容從頭到尾印出來**

例如：

```cpp
list.insert(10);
list.insert(20);
list.insert(30);
list.print();
```

輸出結果會是：

```
10 -> 20 -> 30 -> NULL
```

---

## 🔸 2. 變數 `Node* temp = head;`

* `temp` 是一個「暫時的指標」。
* 一開始它指向 `head`（也就是第一個節點）。

這樣可以用 `temp` 來「走訪整條串列」，
而不會改變 `head` 的位置（因為 `head` 要一直指在開頭）。

---

## 🔸 3. `while (temp != nullptr)`

這是一個迴圈，意思是：

> 「只要 temp 不是空的（表示還沒走到串列尾端），就繼續印。」

在每一圈：

1. 印出目前節點的資料 `temp->data`
2. 把 `temp` 移到下一個節點：`temp = temp->next`

---

## 🔸 4. `std::cout << temp->data << " -> ";`

這行會輸出目前節點的資料，後面加上箭頭符號。
例如：

```
10 -> 20 -> 30 -> 
```

這樣就能直覺地看到「節點之間的連線」。

---

## 🔸 5. 走到底後印出 NULL

```cpp
std::cout << "NULL" << std::endl;
```

當 `temp` 已經是 `nullptr`（代表沒有下一個節點），
就印出 `NULL` 來表示串列的結尾。

完整輸出範例：

```
10 -> 20 -> 30 -> NULL
```

---

## 🔹 6. 程式執行流程圖（假設串列有三個節點）

```
head
 ↓
[10] → [20] → [30] → nullptr
```

程式執行過程：

| 步驟 | temp 指向的節點 | 螢幕輸出  |
| -- | ---------- | ----- |
| 1  | [10]       | 10 -> |
| 2  | [20]       | 20 -> |
| 3  | [30]       | 30 -> |
| 4  | nullptr    | NULL  |

輸出結果：

```
10 -> 20 -> 30 -> NULL
```

---

## ✅ 小總結

| 元素                        | 功能         |
| ------------------------- | ---------- |
| `Node* temp = head;`      | 從串列開頭開始走訪  |
| `while (temp != nullptr)` | 走訪每個節點直到結尾 |
| `temp->data`              | 取得當前節點的資料  |
| `temp = temp->next`       | 移動到下一個節點   |
| 印出 `"NULL"`               | 表示串列結束     |

---

## 💡 延伸：完整 `LinkedList` 類別範例

```cpp
#include <iostream>

class Node {
public:
    int data;
    Node* next;
    Node(int value) {
        data = value;
        next = nullptr;
    }
};

class LinkedList {
private:
    Node* head;
public:
    LinkedList() { head = nullptr; }

    void insert(int value) {
        Node* newNode = new Node(value);
        if (head == nullptr) {
            head = newNode;
        } else {
            Node* temp = head;
            while (temp->next != nullptr)
                temp = temp->next;
            temp->next = newNode;
        }
    }

    void print() {
        Node* temp = head;
        while (temp != nullptr) {
            std::cout << temp->data << " -> ";
            temp = temp->next;
        }
        std::cout << "NULL" << std::endl;
    }
};

int main() {
    LinkedList list;
    list.insert(10);
    list.insert(20);
    list.insert(30);
    list.print(); // 輸出：10 -> 20 -> 30 -> NULL
}
```

---

## p.19-2   


---

## 🔹 程式碼全文

```cpp
// Destructor to free memory
~LinkedList() {
    Node* current = head;
    while (current != nullptr) {
        Node* nextNode = current->next;
        delete current;
        current = nextNode;
    }
}
```

---

## 🔸 1. `~LinkedList()` 是什麼？

這是 **解構子（Destructor）**。

### 🧠 解構子的作用：

當一個物件被**銷毀 (destroyed)** 或**離開作用範圍 (out of scope)** 時，
C++ 會自動呼叫它的解構子，
讓你有機會釋放動態配置的記憶體（例如用 `new` 建立的東西）。

例如：

```cpp
{
    LinkedList list;
    list.insert(10);
    list.insert(20);
} // ← 這一行結束時，list 自動呼叫 ~LinkedList()
```

---

## 🔸 2. 為什麼需要解構子？

因為前面在 `insert()` 函式裡用了：

```cpp
Node* newNode = new Node(value);
```

這是用 **`new` 動態配置記憶體** 的，
C++ 不會自動幫你釋放。
如果不手動 `delete`，就會造成 **記憶體洩漏 (memory leak)**。

---

## 🔸 3. 解構子的工作流程

我們用一個變數 `current` 從 `head` 開始，
一個一個把節點刪掉。

```cpp
Node* current = head;
```

---

### 🧩 while 迴圈

```cpp
while (current != nullptr) {
    Node* nextNode = current->next;
    delete current;
    current = nextNode;
}
```

讓我們逐步看：

| 步驟 | 動作                          | 說明                       |
| -- | --------------------------- | ------------------------ |
| 1  | `nextNode = current->next;` | 先記下下一個節點的位置（不然等下刪掉就找不到了） |
| 2  | `delete current;`           | 釋放目前節點的記憶體               |
| 3  | `current = nextNode;`       | 移動到下一個節點繼續刪              |

這樣就能從頭到尾一個一個刪乾淨。

---

## 🔹 4. 範例視覺化

假設原本的串列是：

```
head → [10] → [20] → [30] → nullptr
```

程式執行順序：

| current | nextNode | 動作          |
| ------- | -------- | ----------- |
| [10]    | [20]     | delete [10] |
| [20]    | [30]     | delete [20] |
| [30]    | nullptr  | delete [30] |
| nullptr | —        | 結束迴圈        |

最後整條串列的記憶體都釋放掉了 ✅

---

## 🔹 5. 程式結束時自動呼叫

你不需要手動呼叫 `~LinkedList()`，
C++ 會自動在物件被銷毀時執行。

例如：

```cpp
int main() {
    LinkedList list;
    list.insert(10);
    list.insert(20);
    list.insert(30);
    list.print();
} // 這裡 list 離開作用域，自動呼叫 ~LinkedList()
```

此時會依序 `delete` 所有節點。

---

## ✅ 小總結

| 元素                | 功能                |
| ----------------- | ----------------- |
| `~LinkedList()`   | 解構子，在物件被銷毀時自動執行   |
| `current`         | 用來走訪每個節點          |
| `nextNode`        | 暫存下一個節點，避免刪掉後遺失指標 |
| `delete current;` | 釋放節點記憶體           |
| 整體結果              | 釋放所有節點 → 不會記憶體洩漏  |

---

## 💡 補充：完整版本（含插入、印出、解構）

```cpp
#include <iostream>

class Node {
public:
    int data;
    Node* next;
    Node(int value) {
        data = value;
        next = nullptr;
    }
};

class LinkedList {
private:
    Node* head;
public:
    LinkedList() { head = nullptr; }

    void insert(int value) {
        Node* newNode = new Node(value);
        if (head == nullptr) {
            head = newNode;
        } else {
            Node* temp = head;
            while (temp->next != nullptr)
                temp = temp->next;
            temp->next = newNode;
        }
    }

    void print() {
        Node* temp = head;
        while (temp != nullptr) {
            std::cout << temp->data << " -> ";
            temp = temp->next;
        }
        std::cout << "NULL" << std::endl;
    }

    // Destructor
    ~LinkedList() {
        Node* current = head;
        while (current != nullptr) {
            Node* nextNode = current->next;
            delete current;
            current = nextNode;
        }
        std::cout << "All nodes deleted." << std::endl;
    }
};

int main() {
    LinkedList list;
    list.insert(10);
    list.insert(20);
    list.insert(30);
    list.print();
} // 離開這裡時，會自動刪除所有節點
```

---

## p.20 Insert element after the target  

Target = Head->next->next
a. Insert->next = Target->next
b. Target->next = Insert

## p.22 Insert Element in the Beginning of the Linked List   

Target = Head
a. hwad = Insert
b. Insert->next = Target

## p.24 Insert Element in the End of the Linked List

Target = Head
While (Target->next != NULL){
Target = Target->next;
}
a.Target->next = Insert

## p.26 Delete the Target  

Target = Head
Prev = Head
While (Target->value !== Value){
Prev = Target
Target = Target->next
}
a.Prev->next = Target->next
b.free(Target)
