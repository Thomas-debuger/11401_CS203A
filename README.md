# 11401_CS203A

**課程名稱**：資料結構（CS203A）   
**學生**：魏允鴻（學號：1131417）    
**GitHub 帳號**：Thomas-debuger    

本倉庫整理了 **11401 學年度第一學期資料結構（CS203A）課程的全部實作與學習內容** 和 **大一一整年的程式實作作品**。包含程式作業、課堂涵蓋主題的延伸筆記、以及期末專案相關檔案。希望透過此 Repo 系統化記錄自己的學習軌跡，也能在未來想重新理解、複習資料結構時做為參考。

---

## 📁 專案內容簡介

### `Assignment`

I’ve uploaded several data structures assignments here, and they are intended to be completed in Visual Studio Code or hand-writing. 

* **Assignment I — GitHub Basics & Repository Setup**

```
熟悉 GitHub 的基本操作與版本控制流程：    
建立課程紀錄與個人網頁兩個 Repository，學習使用 README、Commit 與 GitHub Pages，作為後續課程內容與成果的長期記錄空間。
```

* **Assignment II — Array Selection Sort**

```
會選擇排序在「陣列」上的運作方式：
透過陣列視覺化與手寫追蹤，理解如何在未排序區間中找最小值並交換位置，同時認識時間與空間複雜度。
```

* **Assignment III — Linked List Selection Sort**

```
比較選擇排序在「鏈結串列」與陣列上的差異：    
將選擇排序應用到單向鏈結串列，只交換節點內數值，體會串列需逐一走訪、指標追蹤與記憶體配置的特性。
```

* **Assignment IV — Hash Function Implementation**

```
理解雜湊函數設計如何影響資料分布與碰撞：    
實作整數與字串的自訂雜湊函數，比較質數與非質數表大小，分析碰撞、群聚與效能表現。
```

* **Assignment V — Tree**

```
建立並比較各種樹狀資料結構的特性與應用：    
從基本樹到 BST、AVL、紅黑樹與 Heap，理解結構演化、建構方式與不同應用場景下的效能取捨。
```

---

### `Quiz`

I’ve uploaded several data structures quizs here. 

* **Quiz I — Introduction to C Programming and Data Structures**

```
理解 C 語言的動態記憶體管理與基本時間複雜度概念：    
熟悉 malloc / realloc / free 的正確用法，能辨識常見記憶體錯誤，
並掌握基礎 Big O 複雜度（如 O(1)、O(n)、O(n^2)）及其效率比較。
```

* **Quiz II — Array, Linked List, Stack and Queue**

```
掌握線性資料結構的指標操作與 ADT 行為：    
透過 MoveTo 函數理解鏈結串列節點的斷開與重接，
並熟悉 Stack（LIFO）與 Queue（FIFO）的基本操作與應用情境。
```

* **Quiz III — Hash Table**

```
理解雜湊碰撞的成因與解決策略：    
比較開放定址法與鏈結法的差異，
分析負載因子與群聚效應，並實際計算除法餘數法與折疊法的雜湊結果。
```

* **Quiz IV — Tree, Heap and Graph**

```
整合非線性資料結構的走訪與分類概念：    
理解 BFS 的層序搜尋流程、運算式樹的走訪與計算，
並區分 BST、Heap、完全二元樹與平衡樹的結構規則與應用。
```

* **Quiz V — Tree / Heap / Graph**

```
理解樹與圖的核心概念及一般樹轉二元樹的表示方法：    
掌握 Tree 專用術語（Root / Parent / Child / Siblings / Leaf / Subtree / Degree / Height / Depth / Level）與 Graph 專用術語（Vertex / Edge / Weighted Edge），
並能將一般樹透過 Left-Child Right-Sibling 方法轉換為二元樹，完整保留階層與兄弟關係以便儲存與運算。
```

---

### `notes`

Review notes (in Markdown) compiled from the professor’s lecture slides during spare time. The content is well-organized and easy to follow, supplemented with diagrams and small code snippets to help quickly review core concepts.

* **Array**

```
理解陣列的記憶體配置與存取特性：    
掌握 index-based O(1) 存取、動態記憶體配置（malloc / realloc / free），
並熟悉常見排序、搜尋演算法與快取效能（cache locality）。
```

* **Linked List**

```
理解鏈結串列的節點結構與指標操作：    
透過 head / tail 與 next / prev 指標進行插入、刪除與走訪，
比較其與陣列在記憶體配置與存取效率上的差異。
```

* **Stacks & Queues**

```
掌握堆疊與佇列的抽象資料型態（ADT）行為：    
理解 Stack 的 LIFO 與 Queue 的 FIFO 規則，
並比較以陣列與鏈結串列實作時的效能與限制。
```

* **Hashing**

```
理解雜湊表的資料分布與碰撞處理機制：    
掌握 hash function、load factor 與 chaining / open addressing，
分析雜湊設計對查找效率與空間使用的影響。
```

* **Trees**

```
建立對各種樹狀資料結構的整體認知：    
從基本二元樹、BST、平衡樹到專用樹型（Trie、Heap、B-Tree），
理解結構限制、走訪方式與高度對效能的影響。
```

* **Heap**

```
理解堆積結構與優先權處理機制：    
透過完全二元樹與 heap-order 性質，
掌握 insert、extract、heapify 與 heapsort 的運作流程與時間複雜度。
```

* **Graph**

```
掌握圖形結構的表示法與走訪演算法：    
理解 BFS / DFS、最短路徑與最小生成樹，
並依圖的稠密度選擇合適的儲存方式與演算法。
```

### 使用建議

```
本筆記適合搭配資料結構課程、考前複習與實作練習使用，
內容著重於「概念理解＋效能分析＋C 語言實務考點」。
```
  
---

### `My Programming Practical Works`

```
紀錄自入學以來完成的所有程式練習與專案，涵蓋多種語言與應用領域。
```

* **C#**

```
Windows Form 應用程式開發，熟悉 GUI 設計與事件處理。
```

* **C++**

```
CPE 練習、簡單題目與大型專案實作，強化演算法與資料結構能力。
```

* **VHDL**

```
硬體描述語言實作，熟悉數位邏輯設計與 FPGA 模擬。
```

* **Verilog**

```
硬體描述語言實作，設計與模擬數位電路。
```

* **jQuery**

```
結合 jQuery、HTML 與 Python，完成前端互動與網頁專案。
```

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


