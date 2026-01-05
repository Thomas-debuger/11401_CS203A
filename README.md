# 11401_CS203A

**課程名稱**：資料結構（CS203A）   
**學生**：魏允鴻（學號：1131417）    
**GitHub 帳號**：Thomas-debuger    

本倉庫整理了 **11401 學年度第一學期資料結構（CS203A）課程的全部實作與學習內容** 和 **大一一整年的程式實作作品**。包含程式作業、課堂涵蓋主題的延伸筆記、以及期末專案相關檔案。希望透過此 Repo 系統化記錄自己的學習軌跡，也能在未來想重新理解、複習資料結構時做為參考。

---

## 📁 專案內容簡介

### `Assignment`

I’ve uploaded several data structures assignments here, and they are intended to be completed in Visual Studio Code or hand-writing.  

---

### `Quiz`

I’ve uploaded several data structures quizs here. 

---

### `notes`

利用課餘時間閱讀教授課堂簡報後整理出的複習筆記（Markdown），內容清晰、條理化，搭配圖示與小型程式片段，協助快速複習核心概念。

筆記包括：

* `README.md` — 介紹我的資料結構Github筆記
* `array.md` — 
  * 陣列的抽象資料模型（ADT）
  * 索引與維度概念
  * 動態記憶體配置（malloc / realloc / free）
  * 記憶體位址計算方式、常見排序法（Bubble / Selection / Insertion）
  * 搜尋方法（Linear / Binary）
  * 時間與空間複雜度分析
  * 補充 cache locality、static vs dynamic array 與實務記憶體管理陷阱。
* `Linklist.md` —
  * 鏈結串列的基本結構與節點設計，包含 C 與 C++ 實作方式
  * 節點插入與刪除（頭、中、尾）
  * 走訪（traversal）
  * 類別設計（Node / LinkedList）
  * 建構子與解構子
  * 記憶體釋放與避免 memory leak
  * 比較鏈結串列與陣列在效能與使用情境上的差異。
* `stacks_queues.md` —
  * 介紹堆疊（Stack）與佇列（Queue）的基本定義與抽象資料型態（ADT）
  * 說明 Stack 的 LIFO 與 Queue 的 FIFO 存取特性及其核心操作（push / pop / peek、enqueue / dequeue）
  * 詳細比較陣列（Array-based）與鏈結串列（Linked List-based）兩種實作方式
  * 包含初始化方式、指標管理（top / front / rear）
  * Overflow / Underflow 條件判斷，以及時間與空間複雜度分析  
  * 陣列實作中的固定容量限制與環狀佇列（circular queue）設計
  * 鏈結串列實作中的動態記憶體配置（malloc / free）與指標操作風險
  * 透過多組 C 語言範例與表格，比較 Stack 與 Queue 在不同實作下的效能、記憶體使用與適用情境
* `hashing.md` —
  * 雜湊（Hashing）與雜湊表（Hash Table）的完整觀念整理 
  * 從 Key–Value Pair 與 hash function 的角色出發，說明 table size 與 load factor（α）對效能的影響
  * 系統性比較 collision handling（chaining、open addressing） 
  * 詳解 linear / quadratic / double hashing 與 primary、secondary clustering 
  * 比較 static hashing 與 dynamic hashing（bucket split、local rehashing）
  * 總結各種 hashing 方法的時間複雜度與適用情境
* `trees.md` — 不同類型的樹、常用的遍歷方式
  * 基本概念 / ADT
    * Tree 抽象資料型態（ADT）
    * 節點：root / leaf / internal
    * 節點關係：parent / child / sibling
    * 邊（edge）、子樹（subtree）、層級（level）、深度（depth）、高度（height）
    * 節點度（degree / fan-out）
  * 樹型分類
    * Binary Tree：每節點 ≤ 2 子節點
      * Full / Strict Binary Tree：每節點 0 或 2 子節點
      * Complete Binary Tree：每層填滿，最後一層從左填
    * BST（Binary Search Tree）：左 < 根 < 右
    * Balanced Tree：AVL / Red-Black → 高度差可控，O(log n) 搜尋
    * General / N-ary Tree：節點子數任意或 ≤ N
  * 專用樹型與應用
    * Trie（字典樹）：快速字串搜尋、auto-complete
    * Decision Tree：分類、決策問題
    * Abstract Syntax Tree（AST）：程式語法表示
    * Spanning Tree / MST：最少邊連結所有節點
    * Heap Tree（Max / Min）：完全二元樹 → 優先佇列、堆排序
    * Treap：BST + Heap 特性，維持平衡
    * B-Tree / B+ Tree：矮胖樹 → 降低磁碟 I/O，資料庫索引
    * Segment Tree：區間查詢 sum / max / min
    * Fenwick Tree / BIT：前綴和查詢、單點更新
    * Suffix Tree / Suffix Trie：快速子字串 / 模式匹配
    * KD-Tree / Quad Tree / Octree：多維空間資料分割 → 最近鄰搜尋、GIS、3D 空間索引
  * 樹操作 / Traversal
    * 遍歷方式：前序（Pre-order）、中序（In-order）、後序（Post-order）、層序（Level-order）
    * 插入 / 刪除 / 旋轉（平衡樹專用）
    * 節點查找 / 範圍查詢（BST、Segment Tree、Fenwick Tree、B+ Tree）
  * 效能考量
    * 空間複雜度與節點度影響效率
    * 樹高度 → 搜尋效率 O(log n) vs O(n)
    * 特殊樹型選擇依應用場景（快速搜尋、區間查詢、多維索引等）
* `heap.md` — 
  * 完全二元樹（Complete Binary Tree）與 Heap-order（Max / Min Heap）
  * 陣列表示法：parent / left / right index 計算
  * 核心操作
    * 插入 `insert(x)` → 最後一個節點 → sift-up（上浮） → O(log n)
    * 移除 root `extract_root()` → 最後補上 → sift-down（下沉） → O(log n)
    * 讀取 root `peek_root()` → O(1)
    * 修復節點 `heapify(i)` → 下沉 → O(log n)
    * 建堆 `build_heap(array)` → bottom-up heapify → O(n)
    * 調整優先權 `increase-key / decrease-key` → O(log n)
    * Heapsort → build-heap + n 次 extract → O(n log n)
  * 應用：Priority Queue、排程、Heapsort
  * Index 計算規則：parent(i) = (i − 1)/2、left(i) = 2i+1、right(i) = 2i+2
  * 注意事項：
    * Heap 只保證父子順序，不保證兄弟順序
    * 插入 / 刪除效率取決於樹高（log n）
* `Graph.md` —
  * 圖的基本概念：G = (V, E)
    * Directed / Undirected
    * Weighted / Unweighted
  * 分類：Cyclic / Acyclic、Connected / Disconnected
  * 特殊圖：Tree = Connected + Acyclic
  * 儲存方式
    * Adjacency Matrix → 存取 O(1)、浪費空間
    * Adjacency List → 節省空間、查找邊 O(degree(v))
  * 基本操作
    * Traversal：BFS → Queue → O(V+E)、DFS → Stack / Recursion → O(V+E)
    * Path / Connectivity / Cycle Detection
  * Weighted Graph 最短路徑：
    * Dijkstra → 非負權重 → O(V²) / O(E log V)
    * Bellman-Ford → 可處理負權重 → O(VE)
    * Floyd-Warshall → All-Pairs → O(V³)
  * Minimum Spanning Tree
    * Kruskal → 邊排序 + union-find → O(E log E)
    * Prim → Heap + 選邊 → O(E log V)
  * 注意事項
    * Graph 關注結構，不在乎節點資料
    * 選擇矩陣或串列依圖稠密度決定
    * BFS 用於最短路徑（unweighted）、DFS 用於拓樸排序 / cycle detection
  
---

### `My Programming Practical Works`

---

## 🛠️ 開發環境與使用方式

所有程式碼均在 **Visual Studio Code** 環境中完成，建議搭配以下工具：

* GCC / MinGW 編譯器
* VS Code C/C++ Extension
* Makefile

---

## 📬 聯絡方式

如對內容有任何建議或想交流資料結構的想法，歡迎聯繫：   
電子郵件：thomaswei988@gmail.com   


