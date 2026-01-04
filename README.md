# 11401_CS203A

**課程名稱**：資料結構（CS203A）   
**學生**：魏允鴻（學號：1131417）    
**GitHub 帳號**：Thomas-debuger    

本倉庫整理了 11401 學年度第一學期資料結構（CS203A）課程的全部實作與學習內容。包含程式作業、課堂涵蓋主題的延伸筆記、以及期末專案相關檔案。希望透過此 Repo 系統化記錄自己的學習軌跡，也能在未來想重新理解、複習資料結構時做為參考。

---

## 📁 專案內容簡介

### `/assignments`

放置本課程所有程式作業的原始碼與相關文件。

* **Assignment IV — Hash Function Implementation**
  本次作業專注於「雜湊函數（Hash Function）」的設計與實作，內容包含：

  * 分析不同雜湊策略的特性（Ex：將 table size 設成質數或非質數，對於造成 collision 的機率是否相同等）
  * 撰寫自訂整數與字串雜湊函數
  * 比較各種雜湊函數在不同輸入下的分布情形
  * 撰寫解說文件與示例程式碼
    整份作業以 C 和 C++ 語言完成，並在 Visual Studio Code 環境中編譯測試。

---

## `/notes`

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
  * 堆疊（Stack）與佇列（Queue）的抽象資料型態（ADT）與基本操作（push / pop / peek、enqueue / dequeue），  
  * stacks和queues以陣列與鏈結串列兩種方式實作，  
  * 比較 static array、dynamic array 與 linked list 實作差異，  
  * 說明 overflow / underflow 問題與時間複雜度分析，  
  * 介紹實務應用情境（function call stack、expression evaluation、BFS、buffer 與排程模型）。
* `hashing.md` — 雜湊函數設計、碰撞解決、效能比較
* `trees.md` — 不同類型的樹、常用的遍歷方式
* `heap.md` — Heap 結構、操作（insert / extract / heapify / build-heap）與時間複雜度分析
* `Graph.md` — Graph 基本定義、分類、同構性、BFS 與圖的表示法（Adjacency Matrix / List）
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


