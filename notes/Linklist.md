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
while (Target->next != NULL){  
Target = Target->next;  
}  
a.Target->next = Insert  

## p.26 Delete the Target(First)  

Target = Head  
Prev = Head  
while (Target->value !== Value){  
Prev = Target  
Target = Target->next  
}  
a.Prev->next = Target->next  
b.free(Target)  

## p.28 Delete the Target(Last)   

Target = Head  
Prev = Head  
a.Head = Target->next  
b.free(Target)  

## p.29 Delete the Target(Last)   
Target = Head  
Prev = Head  
while(Target->next != nullptr){  
    Prev = Target  
    Target = Target->next  
}  
Prev->next = nullptr;  
free(Target)  

## p.32-34 Singly Linked List (單鏈表)

C：   
`struct SNode {
int data;
struct SNode *next;
};`

C++：   
`class SNode {
public:
int data;
SNode* next;
SNode(int val) : data(val), next(nullptr) {}
};`

## p.34 SNode(int val) : data(val), next(nullptr) {} 的解釋 - 1

```cpp
SNode(int val) : data(val), next(nullptr) {}
```

是 **C++ 的「建構子初始化列表 (Constructor Initialization List)」**。
這是 C++ 中一種**更高效、更正式的成員初始化方式**。
我們一步一步來拆解 👇

---

## 🔹 一、整體程式回顧

```cpp
class SNode {
public:
    int data;
    SNode* next;

    // 建構子
    SNode(int val) : data(val), next(nullptr) {}
};
```

這個類別代表「鏈結串列的節點」。

每個節點 (`SNode`) 有：

* 一個整數 `data`
* 一個指標 `next`（指向下一個節點）

---

## 🔹 二、那行建構子是什麼意思？

這一行：

```cpp
SNode(int val) : data(val), next(nullptr) {}
```

可以拆成兩個部分：

| 部分                           | 名稱                          | 說明                    |
| ---------------------------- | --------------------------- | --------------------- |
| `SNode(int val)`             | 建構子宣告                       | 當建立一個新節點物件時會自動執行      |
| `: data(val), next(nullptr)` | 初始化列表 (Initialization List) | 在物件正式建立前，直接初始化成員      |
| `{}`                         | 建構子主體                       | 若有額外動作，可以在這裡執行（這裡是空的） |

---

## 🔹 三、初始化列表的作用

初始化列表的作用是：

> ✅ **在物件建立的同時，直接初始化成員變數**，而不是等建立完再指定。

這段：

```cpp
: data(val), next(nullptr)
```

意思是：

* 把參數 `val` 的值直接指定給 `data`
* 把 `next` 設為 `nullptr`（空指標）

等價於：

```cpp
data = val;
next = nullptr;
```

但執行時機 **不同**（下面會講差別 👇）

---

## 🔹 四、初始化列表 vs. 建構子內賦值

### 🧩 寫法一（使用初始化列表）

```cpp
SNode(int val) : data(val), next(nullptr) {}
```

### 🧩 寫法二（在建構子內部賦值）

```cpp
SNode(int val) {
    data = val;
    next = nullptr;
}
```

這兩個的效果看似一樣，但其實有差別：

| 差別   | 初始化列表                 | 在建構子內賦值       |
| ---- | --------------------- | ------------- |
| 執行時機 | **物件建立前** 初始化         | **物件建立後** 再賦值 |
| 效率   | ✅ 比較快，直接初始化           | ⚠️ 先建立再改值，稍慢  |
| 常用於  | `const` 或 參考 (`&`) 成員 | 任何一般成員        |

---

### 🧠 舉例比較（重要）

假設有一個 `const` 成員：

```cpp
class A {
    const int x;
public:
    A(int val) : x(val) {}   // ✅ 正確
    // A(int val) { x = val; } // ❌ 錯誤！const 成員不能在內部再改
};
```

→ 如果不用初始化列表，`x` 根本沒辦法被設定！

---

## 🔹 五、實際執行流程

假設你這樣用：

```cpp
SNode node1(10);
```

C++ 會執行：

1. 分配記憶體給一個 `SNode` 物件
2. 執行初始化列表：

   * `data = 10`
   * `next = nullptr`
3. 進入 `{}`（建構子主體，這裡是空的）
4. 建構完成 ✅

結果：

```
node1.data = 10
node1.next = nullptr
```

---

## ✅ 小總結

| 元素                           | 說明                 |
| ---------------------------- | ------------------ |
| `SNode(int val)`             | 建構子：建立物件時自動執行      |
| `: data(val), next(nullptr)` | 初始化列表，在物件建立前設定初始值  |
| `{}`                         | 建構子主體（可以放額外動作）     |
| 優點                           | 效率更好，支援 const/參考成員 |
| 結果                           | 建立節點時，自動設定資料與指標    |

---

## 💡 補充範例對照

```cpp
#include <iostream>

class SNode {
public:
    int data;
    SNode* next;

    // 建構子：初始化列表寫法
    SNode(int val) : data(val), next(nullptr) {
        std::cout << "建立節點: data = " << data << std::endl;
    }
};

int main() {
    SNode n1(10);
    SNode n2(20);
    n1.next = &n2;

    std::cout << n1.data << " -> " << n1.next->data << std::endl;
}
```

輸出結果：

```
建立節點: data = 10
建立節點: data = 20
10 -> 20
```

---

## p.34 SNode(int val) : data(val), next(nullptr) {} 的解釋 - 2

非常好 👏👏👏
你問的這句：「**寫法一跟寫法二不都是建構子嗎？**」完全正確而且關鍵！

✅ **答案是：是的，兩種都是建構子（constructor）！**
只是——它們「**初始化成員變數的方式不同**」，也就是**執行順序和效率**有差。

我們仔細看 👇

---

## 🔹 兩種建構子的比較

### 🧩 寫法一：使用「初始化列表」的建構子

```cpp
SNode(int val) : data(val), next(nullptr) {}
```

### 🧩 寫法二：在「建構子主體」內賦值的建構子

```cpp
SNode(int val) {
    data = val;
    next = nullptr;
}
```

---

## 🔸 這兩個都是建構子！

兩種寫法都會在你建立物件時執行，例如：

```cpp
SNode n1(10);
```

系統都會呼叫 `SNode(int val)`
然後把 `val = 10` 傳進去。

只是差別在於**「成員變數 data 與 next 是什麼時候被設定」**。

---

## 🔹 差別 1：執行順序不同

### 🧩 寫法一（初始化列表）

1. 配置記憶體給 `SNode`
2. **在進入建構子本體之前**，直接用初始化列表設定變數
   → `data = val; next = nullptr;`
3. 執行 `{}`（建構子主體）

### 🧩 寫法二（在建構子內）

1. 配置記憶體給 `SNode`
2. 自動呼叫每個成員的「預設建構子」
   （例如物件成員會先建出來）
3. 進入建構子本體後，**再把值賦給成員**

---

## 🔹 差別 2：效率與可用性不同

| 差別                            | 初始化列表            | 建構子內賦值     |
| ----------------------------- | ---------------- | ---------- |
| **建立時機**                      | 在物件生成前就設定好       | 先生成，再改值    |
| **效率**                        | ✅ 比較高效           | ⚠️ 多一次賦值動作 |
| **可初始化 const 或 reference 成員** | ✅ 可以             | ❌ 不行       |
| **用途**                        | 通常用在 class 成員初始化 | 通常用在執行邏輯   |

---

## 🔹 範例比較

### ✅ 寫法一（推薦）

```cpp
class Example {
    const int a;
public:
    Example(int x) : a(x) { }  // ✅ 正確，const 可在這裡初始化
};
```

### ⚠️ 寫法二（錯誤）

```cpp
class Example {
    const int a;
public:
    Example(int x) {
        a = x;   // ❌ 錯！const 變數不能再被指派
    }
};
```

---

## 🔹 用生活比喻一下 🎯

想像你在開店：

* **初始化列表** 就像「開店前」就把招牌、貨架擺好（最有效率 ✅）
* **建構子內賦值** 就像「開店後」才慢慢搬貨、改佈置（也可以，但慢一點 ⚠️）

---

## ✅ 小結論

| 問題        | 答案                                |
| --------- | --------------------------------- |
| 兩種都是建構子嗎？ | ✅ 是的，都是建構子！                       |
| 有什麼差？     | 初始化列表更早、更快、更正式地設定成員               |
| 要用哪一種？    | 建議用初始化列表，尤其當有 `const`、參考型別、或物件成員時 |

---

## p.35-38 Traversing the LinkedList and Observe the Memory Address   

非常好！👏👏👏
你這次貼的程式是 **用 C 實作的「鏈結串列 (Linked List)」** 範例，
而且它還會印出每個節點的 **值、位址（address）與下一個節點指標** —— 非常完整 👍

我們一起從上到下仔細講解每一段的用途與執行流程 👇

---

## 🧱 一、程式結構總覽

這段程式主要包含五個部分：

1. **定義節點結構 (`struct Node`)**
2. **建立新節點的函式 (`createNode`)**
3. **走訪並印出節點資訊 (`traverseList`)**
4. **主程式建立鏈結串列 (`main`)**
5. **釋放記憶體 (`free`)**

---

## 🔹 1️⃣ 定義節點結構

```c
typedef struct Node {
    int data;
    struct Node* next;
} Node;
```

這段定義了一個節點（Node）的資料結構：

| 欄位名稱   | 型別             | 功能                     |
| ------ | -------------- | ---------------------- |
| `data` | `int`          | 儲存節點的數值（例如 10, 20, 30） |
| `next` | `struct Node*` | 指向下一個節點的指標（形成鏈結）       |

> `typedef` 讓我們之後可以直接寫 `Node` 而不用每次都寫 `struct Node`。

---

## 🔹 2️⃣ 建立新節點的函式

```c
Node* createNode(int value) {
    Node* newNode = (Node*)malloc(sizeof(Node));
    if (newNode == NULL) {
        printf("Memory allocation failed.\n");
        exit(1);
    }
    newNode->data = value;
    newNode->next = NULL;
    return newNode;
}
```

### 🧠 功能：

用 `malloc()` 配出記憶體空間來建立一個新節點。

| 步驟                      | 說明                    |
| ----------------------- | --------------------- |
| `malloc(sizeof(Node))`  | 配出一塊足夠放一個 Node 的記憶體   |
| 檢查 `newNode == NULL`    | 確保記憶體分配成功             |
| `newNode->data = value` | 設定節點的資料值              |
| `newNode->next = NULL`  | 初始化下一個指標為空（目前還沒接其他節點） |
| `return newNode;`       | 回傳這個新節點的位址給呼叫者        |

---

## 🔹 3️⃣ 走訪與列印鏈結串列

```c
void traverseList(Node* head) {
    Node* current = head;
    int index = 0;
    while (current != NULL) {
        printf("Node %d: Value = %d, Address = %p, Next = %p\n",
               index, current->data, (void*)current, (void*)current->next);
        current = current->next;
        index++;
    }
}
```

### 🧠 功能：

從 `head` 開始，一個一個節點往後走，並印出每個節點的資訊。

| 印出的內容          | 說明           |
| -------------- | ------------ |
| `Node %d`      | 節點編號（第幾個）    |
| `Value = %d`   | 節點的數值        |
| `Address = %p` | 節點自己的記憶體位址   |
| `Next = %p`    | 下一個節點的位址（指標） |

> 這樣可以觀察鏈結串列在記憶體中「每個節點怎麼連在一起」。

---

## 🔹 4️⃣ 主程式：建立並列印鏈結串列

```c
int main() {
    // Create linked list: 10 -> 20 -> 30 -> NULL
    Node* head = createNode(10);
    head->next = createNode(20);
    head->next->next = createNode(30);
```

建立了三個節點，形成：

```
head → [10] → [20] → [30] → NULL
```

接著：

```c
printf("Traversing the linked list:\n");
traverseList(head);
```

會印出類似：

```
Traversing the linked list:
Node 0: Value = 10, Address = 0x600000, Next = 0x600020
Node 1: Value = 20, Address = 0x600020, Next = 0x600040
Node 2: Value = 30, Address = 0x600040, Next = (nil)
```

（實際位址會依執行時不同）

---

## 🔹 5️⃣ 釋放記憶體

```c
Node* current = head;
while (current != NULL) {
    Node* temp = current;
    current = current->next;
    free(temp);
}
```

### 🧠 功能：

防止記憶體洩漏，把前面用 `malloc()` 配出來的節點都釋放掉。

| 步驟                        | 動作                |
| ------------------------- | ----------------- |
| `temp = current`          | 暫存目前節點            |
| `current = current->next` | 先往後移（避免刪掉後找不到下一個） |
| `free(temp)`              | 釋放目前節點記憶體         |

---

## ✅ 執行流程圖

```
[main]
   ↓
createNode(10) → head
   ↓
createNode(20) → head->next
   ↓
createNode(30) → head->next->next
   ↓
traverseList(head)
   ↓
印出所有節點資訊
   ↓
釋放所有節點 (free)
   ↓
結束程式
```

---

## ✅ 小總結表

| 區塊                    | 功能              |
| --------------------- | --------------- |
| `typedef struct Node` | 定義節點資料結構        |
| `createNode()`        | 配置新節點記憶體並初始化    |
| `traverseList()`      | 走訪並印出節點資訊       |
| `main()`              | 建立 10→20→30 的串列 |
| `free()`              | 釋放所有節點記憶體       |

---

## p.39-42

Doubly Linked List (雙鏈表)   

C：   
`struct DNode {
int data;
struct DNode *prev;
struct DNode *next;
};`

C++：   
`class DNode {
public:
int data;
DNode* prev;
DNode* next;
DNode(int val) : data(val), prev(nullptr), next(nullptr) {}
};`

## p.43-46

Circular Linked List (循環鍊表)

C：   
`struct CNode {
int data;
struct CNode *next;
};`

C++：   
`class CNode {
public:
int data;
CNode* next;
CNode(int val) : data(val), next(nullptr) {}
};`


---

## 🧩 第 48 頁：Array vs. Linked List（概念比較）

這頁主要在比較它們在**記憶體配置、大小、存取、插入刪除、效能與應用**等方面的差異。

---

### 🧠 1. Memory Allocation（記憶體配置）

| Array              | Linked List                    |
| ------------------ | ------------------------------ |
| **連續（contiguous）** | **不連續（non-contiguous）**        |
| 一整塊連在一起的記憶體空間      | 每個節點各自用 `malloc()` / `new` 配出來 |

🔹 觀念：

* 陣列就像「排好的櫃子」📦📦📦📦
* Linked List 像「一串鎖鏈」🔗🔗🔗，每個節點散在記憶體裡，但靠指標連起來。

---

### 🧠 2. Size（大小）

| Array          | Linked List |
| -------------- | ----------- |
| 固定（Fixed size） | 動態（Dynamic） |

🔹 說明：

* 陣列在宣告時大小就固定，例如：`int arr[10];`。
* Linked List 可以在執行中增加/刪除節點，沒有固定大小。

---

### 🧠 3. Access (Indexing)（存取速度）

| Array                         | Linked List             |
| ----------------------------- | ----------------------- |
| **O(1)**：可直接透過索引取值，如 `arr[5]` | **O(n)**：需從頭（head）一路找過去 |

🔹 想法：

* 陣列像電影院座位，一看就知道第 5 個在哪。
* Linked List 像一條火車，要從第一節走到第五節。

---

### 🧠 4. Insertion / Deletion（插入 / 刪除）

| Array                | Linked List             |
| -------------------- | ----------------------- |
| **O(n)** → 因為要搬動其他元素 | **O(1)**（如果知道要插入/刪除的位置） |

🔹 例子：

* 陣列中要在中間插入，就得整排往後移。
* Linked List 只要改 `next` 指標即可，非常快。

---

### 🧠 5. Memory Usage（記憶體使用）

| Array  | Linked List     |
| ------ | --------------- |
| 沒有額外開銷 | 每個節點都多了一個「指標欄位」 |

🔹 例如：

```c
struct Node {
    int data;       // 4 bytes
    struct Node* next; // 8 bytes (在 64 位元)
};
```

→ 每個節點比陣列元素多花 8 bytes 儲存 `next` 指標。

---

### 🧠 6. Cache Performance（快取效能）

| Array                | Linked List              |
| -------------------- | ------------------------ |
| 佳（contiguous memory） | 差（non-contiguous memory） |

🔹 原因：

* 陣列元素連續存放，CPU cache 可以預先載入整段資料。
* Linked List 的節點可能散在各處，cache 失效率高。

---

### 🧠 7. Implementation Simplicity（實作難易度）

| Array | Linked List |
| ----- | ----------- |
| 簡單    | 較難，指標處理要小心  |

---

### 🧠 8. Use Cases（使用時機）

| Array       | Linked List   |
| ----------- | ------------- |
| 已知大小、頻繁隨機存取 | 頻繁插入/刪除、不確定大小 |

📍舉例：

* 陣列適合：儲存固定學生名單、表格。
* Linked List 適合：動態隊伍、任務排程、音樂播放清單。

---

## 📗 第 49 頁：Array vs. Linked List（操作效率比較）

這頁用 Big-O 複雜度總整理考點。
一定要背這張表。

---

| **Operation**               | **Array (Dynamic)** | **Linked List** | 備註                       |
| --------------------------- | ------------------- | --------------- | ------------------------ |
| **Access (by index)**       | O(1)                | O(n)            | Linked List 無法直接定位       |
| **Search (尋找值)**            | O(n)                | O(n)            | 兩者都要掃一遍                  |
| **Insert at front (頭部插入)**  | O(n)                | O(1)            | Array 要整排往後移             |
| **Insert at middle (中間插入)** | O(n)                | O(n)            | 都要找到位置                   |
| **Insert at end (尾端插入)**    | O(1)（amortized）     | O(n) 或 O(1)**   | 若 Linked List 有尾指標則 O(1) |
| **Delete**                  | O(n)                | O(n) 或 O(1)***  | 若已知 node 指標則 O(1)        |

---

### 📍 表格底下註解：

> • * O(n) unless tail pointer is used
> • ** With tail pointer and singly linked list
> • *** If node pointer is known, deletion is O(1)

翻成中文：

* 🔸 若沒有 tail 指標，要找到最後一個節點需 O(n)。
* 🔸 有 tail 指標的單向串列可在尾端 O(1) 插入。
* 🔸 如果已經知道要刪的節點位置（例如直接有指標指向它），刪除只需改一條指標 → O(1)。

---

## 🧩 小總結（背起來這樣說最穩）

| 特性       | 陣列 Array | 鏈結串列 Linked List |
| -------- | -------- | ---------------- |
| 記憶體配置    | 連續       | 分散               |
| 大小       | 固定       | 動態               |
| 存取速度     | 快 O(1)   | 慢 O(n)           |
| 插入刪除     | 慢 O(n)   | 快 O(1)           |
| Cache 效能 | 高        | 低                |
| 指標開銷     | 無        | 有                |
| 適用情境     | 查找多      | 插入刪除多            |

---

✅ **考試提示：**

1. 題目常要你比較「時間複雜度」或「何時用哪一個」。
2. 若題目問：「為什麼 Linked List 插入快但存取慢？」要回答：

   > 因為 Linked List 插入只需改指標（O(1)），但存取需從頭開始遍歷（O(n)）。
3. 若題目問：「哪個 cache performance 較好？」答：**Array**。

---

非常棒 👍
你問的 **p.49** 的兩行：「**Insert at end (尾端插入)**」和「**Delete (刪除)**」是整頁中最容易混淆、但最常考的兩個操作！
我們來分別深入講，讓你完全理解為什麼時間複雜度有兩種情況。

---

## 🧩 一、Insert at end（在尾端插入）

表格原文：

> Insert at end →
> Array (Dynamic): **O(1)** amortized
> Linked List: **O(n)** or **O(1)****

---

### 🎯 目標：

在鏈結串列的「最後面」新增一個節點。

---

### 🔹 陣列 (Array)

> **O(1)**（amortized 平均情況下是常數時間）

#### 💡解釋：

* 若是「**動態陣列（如 C++ vector）**」，通常底層會預先配置比目前元素多的空間。
* 所以大部分時間新增一個元素不用重新搬移 → **O(1)**。
* 但偶爾容量滿了（例如放滿 8 個要擴大成 16 個）時，就會整體重新配置並搬資料 → **O(n)**。
  ➜ 不過這種情況很少，所以平均（amortized）仍視為 **O(1)**。

#### 📘簡化記：

> 動態陣列：大多 O(1)，偶爾 O(n)，平均 O(1)。

---

### 🔹 鏈結串列 (Linked List)

> **O(n)** 或 **O(1)**（取決於是否有 tail 指標）

#### 💡解釋：

1. **沒有 tail 指標**：

   * 你只有 head，必須從頭一路找最後一個節點（`while (temp->next != NULL)`）。
   * 找到尾端再插入新節點。
     → **O(n)**（因為需要遍歷整串）

2. **有 tail 指標**：

   * 若你同時維護一個「尾端指標 (`tail`)」，它永遠指向最後一個節點。
   * 插入新節點時：`tail->next = newNode; tail = newNode;`
   * 完全不需要遍歷。
     → **O(1)**（常數時間）

---

### 📘總結：

| 實作方式                | 時間複雜度   | 原因          |
| ------------------- | ------- | ----------- |
| Array               | O(1) 平均 | 動態陣列預留空間    |
| Linked List（無 tail） | O(n)    | 要走訪到最後      |
| Linked List（有 tail） | O(1)    | 直接用 tail 插入 |

---

## 🧩 二、Delete（刪除節點）

表格原文：

> Delete →
> Array (Dynamic): **O(n)**
> Linked List: **O(n)** or **O(1)*****

---

### 🎯 目標：

刪掉一個節點（可能是第一個、中間、最後一個或指定值的節點）

---

### 🔹 陣列 (Array)

> **O(n)**

#### 💡解釋：

假設你有一個陣列：`[10, 20, 30, 40, 50]`
要刪除中間的 `30`，必須把後面的 `[40, 50]` 都往前搬一格。
即使在尾端刪除，動態陣列也需要檢查或調整大小。
→ 所以 **O(n)**。

---

### 🔹 鏈結串列 (Linked List)

> **O(n)** 或 **O(1)**（取決於是否已知要刪除的節點）

#### 💡兩種情況：

1. **只知道「要刪除的值」時（例如刪除值=5）**：

   * 必須從頭找出那個節點（traverse）。
   * 找到它的前一個節點 `prev`，再改：
     `prev->next = target->next;`
   * 這樣走訪的時間是 **O(n)**。

2. **若你已經有「要刪除的節點指標」時**：

   * 例如在程式裡直接有 `Node* target`。
   * 你可以直接用 O(1) 的操作刪除它（例如更改前後指標）。
   * 不需要搜尋，因此是 **O(1)**。

---

### 📘總結：

| 實作方式              | 時間複雜度 | 原因      |
| ----------------- | ----- | ------- |
| Array             | O(n)  | 需要搬動元素  |
| Linked List（找值刪除） | O(n)  | 需遍歷找到節點 |
| Linked List（已知節點） | O(1)  | 直接改指標即可 |

---

### 💡例子補充：

```cpp
// 假設 target 是要刪除的節點，且你已知它
Node* temp = target->next;
target->data = temp->data;
target->next = temp->next;
delete temp;
```

這樣刪除 target 節點的動作只需幾步，**不需遍歷** → O(1)。

---

## ✅ 總整理比較表

| 操作                      | Array   | Linked List（無 tail） | Linked List（有 tail） | 補充說明          |
| ----------------------- | ------- | ------------------- | ------------------- | ------------- |
| **Insert at end**       | O(1) 平均 | O(n)                | O(1)                | tail 指標可加速尾插入 |
| **Delete (by value)**   | O(n)    | O(n)                | O(n)                | 都需搜尋節點        |
| **Delete (by pointer)** | ❌（不適用）  | O(1)                | O(1)                | 若已知節點位址則快     |

---

### 💭 考試記憶口訣：

> 「**有 tail 插尾快，有指標刪除快**」

也就是說：

* 插尾速度取決於「有沒有 tail」。
* 刪除速度取決於「你知不知道節點在哪」。

---

## p.59-72 Node Exchange in Linked List   

Wrong：   
a.head = target;   
b.target->next = prev;   
c.prev->next = target->next;   

Correct：   
a.head = target;   
b.prev->next = target->next;   
c.target->next = prev;   

## p.78 Selection Sort - Linked List (Swap the value)   

👉 **Selection Sort（選擇排序）在 Linked List 上的實作（以「交換節點值」的方式）**

我們來逐行講解，一邊拆邏輯，一邊補上圖解與重點！

---

## 🧩 一、程式碼全文

```cpp
void selectionSortValue(Node* head) {
    for (Node* i = head; i && i->next; i = i->next) {
        Node* minNode = i;
        for (Node* j = i->next; j; j = j->next) {
            if (j->val < minNode->val)
                minNode = j;
        }
        if (minNode != i) {
            int t = i->val;
            i->val = minNode->val;
            minNode->val = t;
        }
    }
}
```

---

## 🧠 二、這段程式在做什麼？

這是「**選擇排序法 (Selection Sort)**」的 Linked List 版本。
但注意喔：
👉 它是「**交換節點的值 (value)**」，不是「**交換節點指標**」。
（交換指標會比較麻煩，這裡用值交換簡單很多。）

---

## 🧩 三、程式邏輯逐行講解

---

### 🔹 `for (Node* i = head; i && i->next; i = i->next)`

這是「外層迴圈」，控制目前正在排序的**位置 `i`**。

想像 Linked List 如下：

```
[64] → [25] → [12] → [22] → [11] → NULL
```

`i` 從第一個節點開始（head），一次往後一個，
每次都要找到「從 i 開始到尾端」裡**最小的值**。

---

### 🔹 `Node* minNode = i;`

假設目前位置 `i` 的節點值是最小的，先暫時記錄它。
（之後會用內層迴圈去找更小的。）

---

### 🔹 `for (Node* j = i->next; j; j = j->next)`

這是「內層迴圈」，從 `i` 的下一個節點開始，往後搜尋。

目的是在 `i` 之後的所有節點中，
找出「**最小值所在的節點 minNode**」。

---

### 🔹 `if (j->val < minNode->val) minNode = j;`

如果找到更小的節點，更新 `minNode` 的位置。

---

### 🔹 `if (minNode != i) { ... }`

如果找到的最小值節點不是自己（`i`），那就進行交換。

---

### 🔹 `int t = i->val; i->val = minNode->val; minNode->val = t;`

這三行是**值交換 (swap)**。
交換 `i` 和 `minNode` 的資料，不改動指標。

---

## 🧮 四、用範例走一遍

假設原始鏈結串列是：

```
64 → 34 → 25 → 12 → 22 → NULL
```

### 第 1 回合（i 指向 64）

* `minNode` 從 64 開始。
* 內層掃描後，發現最小值是 `12`。
* 交換 `64` 和 `12` →
  `12 → 34 → 25 → 64 → 22 → NULL`

---

### 第 2 回合（i 指向 34）

* 搜尋 `34 → 25 → 64 → 22`，最小的是 `22`。
* 交換 `34` 和 `22` →
  `12 → 22 → 25 → 64 → 34 → NULL`

---

### 第 3 回合（i 指向 25）

* 剩下 `25 → 64 → 34`，最小是 `25`，不交換。

---

### 第 4 回合（i 指向 64）

* 剩下 `64 → 34`，最小是 `34`，交換 →
  `12 → 22 → 25 → 34 → 64 → NULL`

排序完成 ✅

---

## ⏱️ 五、時間複雜度

* 外層 `i` 會跑 n−1 次
* 內層 `j` 會跑 (n−i−1) 次
  ➡️ 總時間：**O(n²)**
  （跟陣列版的選擇排序一樣）

空間複雜度：**O(1)**（只有幾個指標變數）

---

## 💡 六、程式特色與缺點

| 優點       | 缺點                    |
| -------- | --------------------- |
| 實作簡單，易懂  | 需兩層迴圈，速度慢             |
| 不需要額外記憶體 | 若 Linked List 很長，效率差  |
| 不改指標，安全  | 若要穩定排序（保持相同值順序），此法不穩定 |

---

## 📘 七、小重點總結

| 概念   | 說明                     |
| ---- | ---------------------- |
| 排序法  | Selection Sort         |
| 操作對象 | Linked List            |
| 方法   | 交換節點「值」而非「指標」          |
| 外層迴圈 | 固定一個節點 i               |
| 內層迴圈 | 找出 i 之後最小的值節點          |
| 複雜度  | O(n²)                  |
| 穩定性  | 不穩定排序（equal 元素順序可能被換掉） |

---

