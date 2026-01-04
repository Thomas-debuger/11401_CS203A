# 11401_CS203A

**課程名稱**：資料結構（CS203A）   
**學生**：魏允鴻（學號：1131417）    
**GitHub 帳號**：Thomas-debuger    

本倉庫整理了 **11401 學年度第一學期資料結構（CS203A）課程的全部實作與學習內容** 和 **大一一整年的程式實作作品**。包含程式作業、課堂涵蓋主題的延伸筆記、以及期末專案相關檔案。希望透過此 Repo 系統化記錄自己的學習軌跡，也能在未來想重新理解、複習資料結構時做為參考。

---

## 📁 專案內容簡介

### `Assignment`

放置本課程所有程式作業的原始碼與相關文件。

* **Assignment II — Array Selection Sort**   
  這份作業主要專注於「選擇排序法（Selection Sort）」的運作原理與實作過程，內容包含：
  * **陣列資料結構的視覺化**：學習如何以圖形化方式呈現陣列（Array），並正確標註索引（Index）與對應的數值 。
  * **資料初始化與標註：** 將給定數值（22, 90, 95, 100, 71, 19, 5, 70）填入陣列，並加上名稱與索引標籤 。
  * **選擇排序演算法的實作細節**：理解並追蹤選擇排序法的步驟，包括在未排序區域中尋找最小值，並將其與當前位置交換（Swap）的過程 。
  * **演算法複雜度分析**：探討選擇排序在不同情況下的時間複雜度（O(n^2)）與空間複雜度（O(1)），以及陣列存取的效能特性 。
  * **逐步執行與追蹤（Trace）**：針對給定的 8 個整數，手寫記錄演算法前三個步驟的陣列狀態變化、最小值搜尋範圍以及交換紀錄 。
  * 整份作業要求**以手寫方式完成**於專用工作紙上，旨在透過動手實作加強對基礎排序邏輯與記憶體佈局的理解 。

---

* **Assignment III — Linked List Selection Sort**   
  這份作業重點在於將選擇排序法應用於「**鏈結串列（Linked List）**」並與陣列進行比較，內容包含：
  * **鏈結串列視覺化**：繪製單向鏈結串列的節點結構，包含數值與指向下一個節點的指標（Next Pointer） 。
  * **資料初始化**：將給定的 8 個整數（60, 24, 15, 42, 20, 11, 90, 8）存入串列，並標註 `head` 與 `tail` 。
  * **特定排序策略實作：** 練習在不修改指標指向的前提下，僅透過交換節點內的數值來完成選擇排序 。
  * **演算法步驟追蹤**：手寫記錄前三次排序過程。特別注意此實作僅交換節點內的「數值」，而不更動指標指向 。
  * **雙重結構深度對比（作業核心）：**
    * 存取效率：比較陣列的隨機存取（O(1)）與串列的循序走訪（O(n)）。
    * 記憶體配置：分析連續記憶體（Array）與離散記憶體（Linked List，需額外指標空間）的優劣 。
    * 實作難度：討論鏈結串列在操作時所需的「指標追蹤（Pointer Chasing）」與空指標檢查（Null Checks）等額外開銷 。
  * 整份作業要求**手寫實作**來理解鏈結串列在搜尋最小值時需「逐一走訪」的特性，並探討其在動態資料處理上的優勢 。

---

* **Assignment IV — Hash Function Implementation**   
  本次作業專注於「雜湊函數（Hash Function）」的設計與實作，內容包含：   

  * **分析不同雜湊策略的特性：** 探討雜湊表大小（Table Size）設為質數與非質數對碰撞（Collision）機率的影響。
  * **撰寫自訂雜湊函數：** 實作針對整數與字串資料類型的自訂雜湊演算法。
  * **比較數據分布情形：** 觀測並分析各種雜湊函數在不同輸入資料下的分布均勻度與效能。
  * **撰寫解說文件與示例程式碼：** 提供完整的實作說明與測試輸出結果。
  * 整份作業以 **C 和 C++ 語言**完成，並在 Visual Studio Code 環境中進行編譯與測試。

---

### `Quiz`

* **Quiz I — Introduction to C Programming and Data Structures**   
  這份考試內容主要是考察 C 語言的記憶體管理基礎以及演算法複雜度的初步概念，內容包含：

  * **C 語言動態記憶體操作實作**：練習使用 `malloc` 配置記憶體 、`realloc` 調整陣列大小 以及 `free` 釋放資源 ，並掌握 `sizeof` 的正確用法。
  * **安全性程式碼審查（Code Review）**：辨識常見的記憶體錯誤，例如未檢查 `malloc` 是否回傳 NULL 、直接對原指標使用 `realloc` 導致失敗時發生記憶體洩漏（Memory Leak）等問題。
  * **安全開發實踐**：學習使用「暫存指標（Temporary Pointer）」來處理記憶體重新配置 ，並在釋放記憶體後將指標設為 `NULL` 以防止懸空指標（Dangling Pointer）產生的錯誤。
  * **時間複雜度分析（Big O Notation）**：
    * 辨別基礎操作的複雜度，如陣列隨機存取為 O(1)，循序搜尋與遍歷為 O(n)。
    * 理解複合操作的效率，例如執行 n 次二分搜尋的複雜度為 O(nlogn)。
    * 排序演算法（如氣泡排序）的效能理解 O(n^2)。
  * **演算法效率排序**：掌握各種複雜度從最快（最有效率）到最慢的增長順序：O(1) < O(\log n) < O(n) < O(n \log n) < O(n^2) < O(n^3) < O(n!)。
  * **學習反饋與討論**：探討學習資料結構時面臨的挑戰與解決方法。

* **Quiz II — Array, Linked List, Stack and Queue**   
  這份考試內容的重點在於**動態指標操作**與**基礎線性結構的定義**：
  
  * **指標遷移機制實作 (`MoveTo` 函數)**：
    * **邏輯核心**：實作如何將 `target` 節點從原位移除，並插入到 `destination` 節點之後 。這需要精確操作指標，而非簡單地交換數據（Data Swapping）。
    * **關鍵步驟**：必須先尋找 `target` 的前驅節點（prevTarget）以維持串列不斷裂，接著依序完成「斷開連結」與「重新連結」的步驟。
    * **變體討論**：分析雙向鏈結串列（Doubly Linked List）如何透過前向指標（Prior Pointer）讓此操作更具效率。
  * **基礎 ADT 運作原理**：
    * **Stack (堆疊)**：遵循 **LIFO** (後進先出) 。必須掌握 `push` (推入) 與 `pop` (彈出) 的頂端操作。
    * **Queue (佇列)**：遵循 **FIFO** (先進先出) 。包含從末端 `enqueue` (入列) 與從前端 `dequeue` (出列) 的機制。
  * **AI 學習策略**：練習如何利用 AI 工具探討資料結構在現實場景中的應用實例與實作策略。

* **Quiz III — Hash Table**   
  這份考試內容專注於**雜湊碰撞（Collision）的成因及其解決方案**：

  * **雜湊表核心術語**：
    * **負載因子 ($\alpha$)**：定義為 （元素量/表大小） 。高負載因子會增加衝突機率，導致效能下降。
    * **碰撞處理**：比較「開放定址法（Open Addressing，所有資料存於表中）」與「鏈結法（Separate Chaining，使用桶子儲存清單）」的差異。
  * **群聚效應（Clustering）分析**：
    * **一次群聚**：線性探測法容易產生連續填滿的區塊，嚴重影響搜尋效率。
    * **二次群聚**：當多個鍵值具有相同雜湊值時，會遵循相同的探測序列（雖不一定連續）。
  * **雜湊函數計算實務**：
    * **除法餘數法**：觀察到當  時，所有末位數相同的鍵值（如 27, 37, 47）皆會發生碰撞。
    * **折疊法 (Folding Method)**：學習將長數字切段求和（如 ） 。實驗證明折疊法能打亂輸入模式，使資料分佈更均勻。

* **Quiz IV — Tree, Heap and Graph**   
  本次測驗進入**非線性結構的演算法與分類**：

  * **圖形搜尋演算法 (BFS)**：
    * **運作邏輯**：使用「佇列 (Queue)」並以「層序 (Level-by-level)」方式訪問節點。
    * **路徑推導**：針對給定圖形，能列舉出所有符合規範的走訪順序（例如：從 0 開始，先訪問鄰近的 1, 2, 3, 4，再訪問更深層的 5, 6, 7）。
  * **運算式樹 (Expression Tree)**：
    * **走訪應用**：利用「中序走訪 (Inorder Traversal)」還原算術表達式。
    * **數值評估**：能將還原後的式子（如 ）正確計算出結果（14）。
  * **二元樹的多樣性分類**：
    * **形狀限制**：如「完全二元樹 (Complete Binary Tree)」要求除了最後一層外皆填滿，且最後一層需靠左對齊。
    * **規則限制**：
      * **BST**：左子樹 < 根節點 < 右子樹。
      * **Heap (堆積)**：父節點必須大於或等於（Max Heap）子節點，常用於優先權佇列。
      * **平衡樹 (AVL/Red-Black)**：具備自平衡機制，保證操作時間複雜度為。

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


