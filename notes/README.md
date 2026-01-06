# Announcement

* Course Material: Lecture notes on Data Structures.
* AI Assistance: This content was synthesized, refined, and organized with the assistance of ChatGPT and Gemini AI
* Implementation: Whenever I review, I read the professor’s slides page by page from start to finish. If I encounter any concepts I don’t understand, I take a screenshot of that page, ask AI for clarification, and after understanding its explanation, I add the organized notes to GitHub to maintain a complete learning record.

---

# Data Structures 

### 這個資料庫(notes)收錄了我對 資料結構 的學習筆記，內容包括：

- Array
- Linklist
- Stacks & Queues
- Hashing
- Trees
- Heap
- Graph

### 筆記涵蓋定義、核心操作、C 語言範例、比較分析，以及記憶體與效能技巧。

---

## Contents

1. Array
2. Linklist
3. Stacks & Queues
4. Hashing
5. Trees
6. Heap
7. Graph

## **Array.md**
  * 抽象資料型態（ADT）
    * 固定長度 / 動態長度陣列
    * 支援 index-based 存取：`A[i]` → O(1)
  * 索引與維度
    * 一維、二維、多維陣列
    * 記憶體連續配置
  * 動態記憶體配置
    * `malloc(size)`, `realloc(ptr, new_size)`, `free(ptr)`
    * 需注意 memory leak 與 dangling pointer
  * 記憶體位址計算
    * element_address = base_address + i × element_size
  * 排序方法
    * Bubble Sort → O(n²)
    * Selection Sort → O(n²)
    * Insertion Sort → O(n²)，幾乎排序時 O(n)
  * 搜尋方法
    * Linear Search → O(n)
    * Binary Search → O(log n)（須已排序）
  * 時間與空間複雜度分析
    * 存取 O(1)
    * 插入 / 刪除 O(n)（非尾端）
  * 補充 / 實務考點
    * Cache locality → 陣列連續性好，快取效率高
    * Static vs Dynamic Array → static 固定容量、dynamic 可擴展
    * 常見陷阱 → realloc 失敗、越界存取

---

## **Linklist.md**
  * 基本結構
    * Node 結構：`data + next`（單向）、`prev`（雙向）
    * LinkedList 類別：head / tail 管理節點
  * 節點操作
    * 插入：頭 / 中 / 尾 → O(1) 或 O(n)
    * 刪除：頭 / 中 / 尾 → O(1) 或 O(n)
    * 走訪 traversal → O(n)
  * 記憶體管理
    * 建構子 / 解構子初始化、釋放節點
    * 避免 memory leak → 每個 malloc 對應 free
  * 比較陣列
    * 優勢：插入刪除快、大小可變
    * 劣勢：存取慢、不連續記憶體
  * 注意事項
    * 指標操作需小心 Null pointer
    * 不適合頻繁隨機存取

---

## **Stacks_Queues.md**

  * 抽象資料型態（ADT）
    * Stack → LIFO
      * 操作：push / pop / peek
    * Queue → FIFO
      * 操作：enqueue / dequeue / peek
  * 實作方式
    * Array-based → top / front / rear 指標管理
      * 限定容量 → Overflow / Underflow
      * Queue 可用 circular buffer 改善
    * Linked List-based → malloc / free
      * 無固定容量限制
      * 指標操作風險高
  * 時間與空間複雜度
    * Push / Pop / Enqueue / Dequeue → O(1)
    * 空間 → O(n)
  * 應用與比較
    * Stack：函式呼叫、Undo、括號匹配
    * Queue：排程、IO 緩衝、BFS
    * Array vs Linked List → 性能、記憶體使用、場景依需求選擇

---

## **Hashing.md**

* 基本概念
  * Key–Value Pair → hash function → index
  * Table Size 與 Load Factor α = n / m → 影響衝突率
* Collision Handling
  * Chaining → 每格鏈結串列
  * Open Addressing → Linear / Quadratic / Double Hashing
    * Primary clustering / Secondary clustering
* Static vs Dynamic Hashing
  * Static → 固定桶數
  * Dynamic → Bucket split / Local rehashing
* 操作與時間複雜度
  * Insert / Search / Delete → Average O(1)，Worst O(n)（碰撞嚴重）
* 實務考點
  * 適用於快速查找 / 記錄頻率
  * 空間使用與衝突解法選擇影響效能
  * Hash function 好壞直接決定表現

---

## **Trees.md**
  * 樹（Tree）的抽象資料型態（ADT）與基本概念
    * 節點（node）：root / leaf / internal node
    * 節點關係：parent / child / sibling
    * 邊（edge）、子樹（subtree）、層級（level）、深度（depth）、高度（height）
    * 節點度（degree / fan-out）與不同樹型範例：Binary Tree、Trie、B-tree / B+ tree
  * 樹的特殊形態與性質
    * Full Binary Tree / Strict Binary Tree：每節點 0 或 2 子節點
    * Complete Binary Tree：每層填滿，最後一層從左邊開始填
    * Binary Search Tree（BST）：左 < 根 < 右
    * Balanced Tree（AVL / Red-Black）：保持高度差在可控範圍以維持 O(log n) 搜尋
    * General Tree / N-ary Tree：節點子數任意 / ≤ N
  * 專用樹型與應用
    * Trie（字典樹）：字母分支，快速字串搜尋與 auto-complete
    * Decision Tree（決策樹）：問題 → 分支 → 結果，用於機器學習分類
    * Abstract Syntax Tree（AST）：程式語法表示，編譯器與 IDE 使用
    * Spanning Tree（生成樹 / MST）：圖論概念，最少邊連結所有節點，用於網路路由與演算法
    * Heap Tree（最大 / 最小堆）：完全二元樹，用於優先佇列與堆排序
    * Treap：BST + Heap 特性，維持平衡
    * B-Tree / B+ Tree：矮胖樹結構，降低磁碟 I/O，用於資料庫索引
    * Segment Tree（線段樹）：區間查詢（sum / max / min）
    * Fenwick Tree（樹狀陣列 / BIT）：前綴和查詢與單點更新
    * Suffix Tree / Suffix Trie：後綴字串搜尋，快速子字串與模式匹配
    * KD-Tree / Quad Tree / Octree：多維空間資料分割，應用於最近鄰搜尋、GIS、3D 空間索引
  * 樹操作與效能考量
    * 遍歷方式（Traversal）：前序 / 中序 / 後序 / 層序
    * 插入、刪除、旋轉（平衡樹特有）
    * 節點查找與範圍查詢（BST、Segment Tree、Fenwick Tree、B+ Tree）
    * 空間複雜度、節點度對效能影響
    * 樹高度對搜尋效率的重要性（O(log n) vs O(n)）

---

## **Heap.md**
  * 完全二元樹（Complete Binary Tree）與 Heap-order（Max / Min Heap）概念
  * 儲存方式：陣列表示法，parent / left / right index 計算
  * 核心操作（Operations）：
    * insert(x) → 放最後 → sift-up（上浮） → O(log n)
    * extract_root() → root 移除 → 最後補上 → sift-down（下沉） → O(log n)
    * peek_root() → 直接讀 root → O(1)
    * heapify(i) → 修復某節點 → 下沉 → O(log n)
    * build_heap(array) → bottom-up heapify → O(n)
    * increase-key / decrease-key → 調整元素優先權 → O(log n)
    * heapsort → build-heap + n 次 extract → O(n log n)
  * Heap 的應用
    * Priority Queue（最大 / 最小優先級處理）
    * 排程（CPU、印表機、任務）
    * Heapsort 排序
  * Index 遷移規則：
    * parent(i) = (i − 1) / 2
    * left(i) = 2i + 1
    * right(i) = 2i + 2
  * 考點提示
    * Heap 只保證父子順序，不保證兄弟順序
    * 插入與刪除效率取決於樹高（log n）
    * build-heap 利用 bottom-up heapify → O(n)
---   

## **Graph.md**
  * 圖的基本概念
    * Graph G = (V, E) → V: 頂點集合、E: 邊集合
    * 邊可能有方向（Directed）或無方向（Undirected）
    * 邊可能有權重（Weighted）或無權重（Unweighted）
  * 分類（Classification）
    * Directed / Undirected
    * Weighted / Unweighted
    * Cyclic / Acyclic
    * Connected / Disconnected
  * 特殊圖結構
    * Tree = Connected + Acyclic Graph
  * 同構性（Isomorphism）
    * 兩圖同構 → 頂點數相同、邊數相同、連接關係相同
    * 重點：結構比標籤或繪製方式重要
  * Graph 的儲存方法
    * Adjacency Matrix（鄰接矩陣）
      * 好處：存取 O(1)
      * 缺點：浪費空間（稀疏圖）
    * Adjacency List（鄰接串列）
      * 好處：節省空間（稀疏圖）
      * 缺點：查找某條邊 O(degree(v))
  * 基本操作（Operations）
    * Traversal（走訪）
      * BFS → Queue → O(V + E)
      * DFS → Stack / Recursion → O(V + E)
    * Path / Connectivity / Cycle Detection
  * Weighted Graph 最短路徑
    * Dijkstra → 非負權重 → O(V^2) 或 O(E log V)
    * Bellman-Ford → 可處理負權重 → O(VE)
    * Floyd-Warshall → All-Pairs → O(V^3)
  * Minimum Spanning Tree
    * Kruskal → 邊排序 + union-find → O(E log E)
    * Prim → Heap + 選邊 → O(E log V)
  * 考點提示
    * Graph 是關係資料結構，不在乎節點本身資料
    * 選擇鄰接矩陣或鄰接串列依圖稠密度決定
    * BFS 用於最短路徑（unweighted）、DFS 用於拓樸排序 / cycle detection
---

**Author:** Yun-Hong Wei <thomaswei988@gmail.com>   
**Date:** 2025   
 
