# p.10、p.14 名詞解釋   

* root：最上面的節點
* interval：必有一個以上的children
* leaf：沒有 child
* parent, child
* siblings：同一個 parent 的 children
* edge：節點的連線
* subtree：子樹(有parent跟child)
* level：在哪一層(0~n)
* depth / height：深度、樹的高度
* fan-out / degree：一個節點最多可以有幾個 child
  * Binary Tree（二元樹）
    degree = 2 每個節點最多兩個 child）
  * Trie（字典樹）
    degree = 字母數量（英文可能 26，小寫英文字母就是 26）
  * B-tree、B+ tree（資料庫用）
    degree 可以大到上百 → 這能讓資料庫查詢 super 快
go out    stay home

# p.15

### 🌟 1. **Full Binary Tree（滿二元樹）

每個節點 **要嘛有 2 個孩子，要嘛 0 個（是 leaf）**。

> **不能只有 1 個 child。**

可以把它想像成「完全整齊的二元分支」：

```
       A
     /   \
    B     C
   / \   / \
  D  E  F  G
```

💡 用在：

* **機器學習（ML）決策點**
  每一個 node 做兩種分支選擇：yes/no、true/false

---

### 🌟 2. **Complete Binary Tree（完全二元樹）**

樹的每一層都要填滿，**只有最後一層可以沒滿，但一定要從左邊開始填。**

想像你排座位，最後一排可以沒坐滿，但不能中間空一格。

```
       A
     /   \
    B     C
   / \
  D   E
```

💡 用在：

* **Heap（堆積樹）**
  → 優先隊列 priority queue 就是用 heap
  → heap 必須是 complete 才能用 array 表示

---

### 🌟 3. **Binary Search Tree（BST）**

有排序規則的二元樹：

> **左 < 根 < 右**

看起來像：

```
       50
     /     \
   30       70
  /  \     /  \
20  40   60  80
```

💡 用在：

* O(log n) 搜尋（如果樹平衡）
* 重要資料結構：set、map（底層常用平衡 BST）

---

### 🌟 4. **Balanced Tree（平衡樹：如 AVL、Red-Black）**

保持樹的高度差不會太大的樹。
否則 BST 會退化成 linked list。

不平衡長這樣：

```
1
 \
  2
   \
    3
     \
      4
```

平衡樹會自動旋轉成高度差小的樣子。

💡 用在：

* **C++ STL 的 map / set** → Red-Black Tree
* **Java TreeMap**
* **Linux Kernel** 也用 R-B Tree

---

### 🌟 5. **General Tree（多叉樹，無限制）**

節點可以有任意多個孩子。
不像二元樹只有 left/right。

想像檔案系統：

```
Folder
├── A
├── B
└── C
    ├── C1
    └── C2
```

💡 用在：

* **檔案系統（File System）**
* **XML / HTML / JSON**
* **組織架構（Org Chart）**

---

### 🌟 6. **N-ary Tree（N 叉樹）**

General tree 的限制版：
**每個節點最多可以有 N 個 child。**

例如 N = 3：

```
     A
   / | \
  B  C  D
```

💡 用在：

* **遊戲 AI 決策樹**
  → 下棋時每個 state 有很多可能動作
  → 每個節點分支數有限（N）

---

### 🌟 7. **Trie（Prefix Tree，字典樹）**

用字母一個一個往下走的樹。

例如加入單字「cat」和「car」：

```
     c
     |
     a
   /   \
  t     r
```

🧠 優點

* 查找字串超快 → O(length)
* 不需要比較整個字串

💡 用在：

* **Auto-complete（輸入法）**
* **字典、搜尋引擎**
* **Google 搜尋建議**

---

### 🌟 8. **Decision Tree（決策樹）**

機器學習（ML）用的樹，每個節點是「一個問題」，分支是答案。

例如：

```
Is weather sunny?
  /         \
yes         no
|           |
go out    stay home
```

💡 用在：

* **機器學習分類**
* **信用評估（借不借錢）**
* **醫療診斷（有沒有病）**

---

### 🌟 9. **Abstract Syntax Tree（AST）**

程式碼 → 編譯器要把它拆成樹狀表示語法。

例如程式碼：

```
3 + 4 * 5
```

AST 會變成：

```
     +
   /   \
  3     *
       / \
      4   5
```

💡 用在：

* **編譯器（Compiler）**
* **程式分析工具**
* **IDE 語法高亮、錯誤提示**

---

### 🌟 10. **Spanning Tree（生成樹）**

圖（graph）的一個子集合：

> **用最少的邊，把所有節點連起來，而且不能有環。**

像把所有城市連成「一張最便宜的網路」。

想像城市道路：

城市 A—B—C—D
用最少的路連起來不重複。

💡 用在：

* **網路路由（routing）**
* **最小生成樹（MST）**
* **Kruskal / Prim 演算法**

---

# 🎉 最後做一張總整理（超清楚記憶版）

| Tree Type       | 特色                  | 用途                    |
| --------------- | ------------------- | --------------------- |
| Full Binary     | 0 或 2 child         | ML decision structure |
| Complete Binary | 除最後層外都滿             | Heap                  |
| BST             | Left < Root < Right | Searching, Sorting    |
| Balanced Tree   | 高度維持小               | set/map               |
| General Tree    | 任意 child            | File system, JSON     |
| N-ary Tree      | ≤ N child           | Game AI               |
| Trie            | 字母分支                | auto-complete         |
| Decision Tree   | 問題→判斷               | ML classification     |
| AST             | 語法樹                 | 編譯器                   |
| Spanning Tree   | 最少邊連全部節點            | Routing, MST          |

---

# p.15 補充4、8、10 + 1、2 比較   

### 🍀 **(4) Balanced Tree（平衡樹）— 超詳細解說**

Balanced Tree 是所有資料結構裡「最重要」也「最常考」的概念之一。

---

🌳 **Balanced Tree 是什麼？**

> **Balanced Tree = 保持高度不會歪掉的樹**

就這麼簡單！

但為什麼重要？
因為如果樹歪掉（skewed），搜尋速度會變得非常慢：

如果樹長這樣（像 Linked List）👇

```
1
 \
  2
   \
    3
     \
      4
```

搜尋變成 **O(n)**（慢到爆），等於 Linked List。

---

🌲 **Balanced Tree 一定長得像「金字塔」這樣👇**

```
        8
      /   \
     4     12
    / \   /  \
   2   6 10  14
```

**根本看起來就很「平均」**
→ 搜尋速度 = O(log n)（快很多）
→ 資料結構裡的「快」其實都是靠它

---

🧠 **什麼是“平衡”？（真正的定義）**

每種平衡樹的規則不同，但目標一樣：

> **讓左右子樹高度差保持在可控制範圍內。**

例如：

⭐ AVL Tree：

> 每個節點左、右子樹高度差 ≤ 1

超嚴格 → 平衡度最好 → 搜尋最快
但插入、刪除需要旋轉（旋很多）

⭐ Red-Black Tree：

> 用「顏色」規則讓樹不會過度偏移
> 高度維持 O(log n)

較寬鬆 → 插入刪除效率比較好
用得超廣：

* C++ map, set
* Java TreeMap
* Linux Kernel

---

🔧 **Balanced Tree 的用途（超多）：**

* 高效搜尋（set / map）
* 高效插入刪除
* 資料庫索引（紅黑樹）
* 記憶體管理（Kernel）
* GIS、查詢引擎等

👉 **凡是需要大量搜尋 + 維持順序的地方，都會用 Balanced Tree。**

---

### 🍀 **(8) Decision Tree（決策樹）— 超詳細解說**

Decision Tree 是 **機器學習（ML）裡最直覺的模型**。

不像神經網路很抽象，決策樹超好懂。

---

🌳 **Decision Tree 是什麼？**

> **每個節點是「一個問題」，每個分支是「答案」，最後的葉節點是結果。**

就是一棵「問答流程樹」。

---

**舉例：你要不要出門？**

```
           Is it sunny?
          /            \
       Yes              No
      /                  \
Is it weekend?       Stay home
   /     \
 Yes      No
/           \
Go out     Stay home
```

每個 node 就是一個「判斷」。
路徑 = 一串決策。

---

📘 **Decision Tree 如何用在機器學習？**

例如：要不要核貸（給你貸款）

```
    Income > 30k?
      /        \
    Yes        No
    /            \
Credit Good?     Reject
  /    \
Yes     No
 |       \
Approve  Reject
```

模型訓練時會自動「找最佳問題」來分資料。

---

⭐ **Decision Tree 的優點：**

* 超直覺
* 很容易視覺化
* 不需要標準化資料
* 能處理數字 & 類別

---

⚠️ **缺點：**

* **容易過擬合（overfitting）**
* 小資料變化 → 樹形狀完全變掉

所以才有：

* **Random Forest**（多棵決策樹）
* **XGBoost**（超強的樹集成方法）

你聽過的 Kaggle 冠軍模型幾乎都跟 Decision Trees 有關。

---

### 🍀 **(10) Spanning Tree（生成樹）— 超詳細解說**

Spanning Tree 是 **圖論（graph theory）** 裡的重要概念。

---

🌳 **Spanning Tree 是什麼？**

> **在一張圖裡，挑一些邊，讓所有節點互相可以到達，而且不能有環。**

就像要蓋一個能連所有城市的路網，但路要「最簡單，不能重複」。

---

看圖理解最清楚：

原本圖（含環）：

```
A — B — C
|   |   |
D — E — F
```

Spanning Tree 會變成：

```
A — B — C
     |    
     E — F
     |
     D
```

所有點都會被連起來，但是：

* 沒有環
* 路數剛剛好

---

⭐ Spanning Tree 一定具有：

* **包含所有節點**
* **邊數 = 節點數 − 1**
* **不能有 cycle**

---

🥇 **最有名的：Minimum Spanning Tree（最小生成樹 MST）**

要找出「連所有節點最便宜的網路」。

多用：

* **Kruskal 演算法**
* **Prim 演算法**

---

💡 Spanning Tree 的用途多到爆：

* 網路設計（Router、Switch）
* 設計高速公路、光纖架構
* 電力網路
* Cluster 用的 minimum spanning tree
* 圖論演算法基本功

---

### 🌈 **Part 2：Full Binary Tree vs Complete Binary Tree 差在哪？**

你問：

> 1. Full Binary Tree
> 2. Complete Binary Tree
>    **有差嗎？**

差很多！！
這兩個是不同概念，不能混用。

---

### 🌳 **(1) Full Binary Tree = 每個節點 0 或 2 子節點**

不能有 1 個 child 的節點！

```
    A
   / \
  B   C
```

但這樣就不符合：

```
   A
  / 
 B   ← ❌ 只有一個 child
```

**這不叫 full。**

---

### 🌳 **(2) Complete Binary Tree = 層層填滿，最後一層可部分缺，但一定從左邊開始放note**

舉例：

```
       A
     /   \
    B     C
   / \
  D   E
```

這是 complete。

但下面這樣不是：

```
     A
   /   \
  B     C
       /
      D
```

最後一層缺口不能在中間。

---

### 🎯 **差異一覽表**

| 類別          | Full Binary Tree    | Complete Binary Tree |
| ----------- | ------------------- | -------------------- |
| 設定          | 每個節點 0 或 2 children | 除最後層外都要滿，最後層從左填      |
| 可否有 1 child | ❌ 不可                | ✔️ 可以                |
| 必須滿嗎？       | ❌ 不必每層都滿            | ✔️ 幾乎都滿              |
| 應用          | ML decision nodes   | Heap、priority queue  |
| 形狀限制        | 結構嚴格，但自由度較大         | 結構接近滿樹（很整齊）          |

---

### 🎉總結一句話：

> **Full = 每個節點不是 0 就是 2 child（左右都有）**
> **Complete = 樹形狀超整齊（像滿樹，但最後一層可缺）**

兩者差非常多。

---

# p.16

### B-Tree / B+ Tree

**參考網站：https://vocus.cc/article/6720dd18fd89780001dae749**

這兩種樹的目標都是透過「矮胖」的結構（讓每個節點可以放很多鍵值），來**最小化磁碟 I/O 次數**，從而提高搜尋速度。

## 🎯 B 樹 與 B+ 樹 的三大關鍵差異

下表總結了它們在結構、資料儲存和查詢效率上的主要不同點：

| 特性 | 🌳 B 樹 (B-Tree) | 🌲 B+ 樹 (B+ Tree) |
| :--- | :--- | :--- |
| **資料儲存位置** | **內部節點**和**葉節點**都可能儲存**實際資料 (Data)**。 | **只有葉節點**才儲存**實際資料 (Data)**。內部節點僅儲存**索引 (Keys)**。 |
| **內部節點作用** | 既是**索引**，也可能包含**資料**。 | **純粹的索引**和**導航**作用。 |
| **葉節點串聯** | **沒有**特殊的指針串聯。 | **所有葉節點**會用**鏈結串列**串起來 (像串珠一樣)。 |

---

### 1. 📂 儲存結構差異 (決定了 I/O 效率)

這是 B 樹與 B+ 樹 **最核心的差異**：

* **B 樹:** 每個內部節點 $\rightarrow$ **鍵值 + 資料**。
* **B+ 樹:** 內部節點 $\rightarrow$ **只有鍵值**；葉節點 $\rightarrow$ **鍵值 + 資料**。 

#### **為什麼 B+ 樹的設計更好？**

1.  **容納更多鍵值 (Higher Fan-out):**
    * 由於 B+ 樹的**內部節點**不儲存實際資料，同樣大小的一個磁碟區塊（例如 4KB）就可以容納**更多索引鍵 (Keys)**。
    * 每個內部節點能指向更多的子節點，這使得樹的**分支出更多**，樹的**高度更低**。
    * **樹越矮** $\rightarrow$ **查詢所需的磁碟 I/O 次數越少** $\rightarrow$ **查詢速度越快**。

2.  **查詢效率穩定 (Consistent Search Time):**
    * B 樹可能在內部節點就找到資料並停止搜尋（提早退出）。
    * B+ 樹則**保證**每次查詢都必須從根節點走到**葉節點**才能取到資料。
    * 雖然 B+ 樹的步數可能是固定且較長的，但由於它的樹高很低且固定，因此在**最壞情況下和平均情況下的查詢效率都非常穩定且高效**，這對資料庫系統非常重要。

---

### 2. 🔗 範圍查詢差異 (決定了應用場景)

* **B+ 樹:**
    * 葉節點之間是用**單向或雙向鏈結串列**串聯起來的。
    * 進行**範圍查詢**（例如：找出所有分數在 60 到 80 之間的學生），只需要先找到 **60** 這個鍵值的葉節點，然後沿著鏈結串列順序遍歷到 **80** 所在的葉節點即可。這種**順序掃描 (Sequential Scan)** 效率極高，因為它非常適合磁碟的**連續讀取**模式。
* **B 樹:**
    * 如果要在 B 樹中進行範圍查詢，必須對樹做複雜的**中序遍歷 (In-order Traversal)**，這涉及到多次**非連續的 I/O 跳轉**，效率遠低於 B+ 樹。

### 結論

正因為 B+ 樹具有**高度更低 (更少的 I/O)** 和**極為高效的範圍掃描能力**，所以現代的**資料庫系統 (如 MySQL 的 InnoDB)** 和**檔案系統**幾乎都採用 **B+ 樹** 作為索引結構。
