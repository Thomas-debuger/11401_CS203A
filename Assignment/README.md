# Announcement   

### I’ve uploaded several data structures assignments here, and they are intended to be completed in Visual Studio Code or hand-writing.  

---

### Assignment II — Array Selection Sort   
  這份作業主要專注於「選擇排序法（Selection Sort）」的運作原理與實作過程，內容包含：
  * **陣列資料結構的視覺化**：學習如何以圖形化方式呈現陣列（Array），並正確標註索引（Index）與對應的數值 。
  * **資料初始化與標註：** 將給定數值（22, 90, 95, 100, 71, 19, 5, 70）填入陣列，並加上名稱與索引標籤 。
  * **選擇排序演算法的實作細節**：理解並追蹤選擇排序法的步驟，包括在未排序區域中尋找最小值，並將其與當前位置交換（Swap）的過程 。
  * **演算法複雜度分析**：探討選擇排序在不同情況下的時間複雜度（O(n^2)）與空間複雜度（O(1)），以及陣列存取的效能特性 。
  * **逐步執行與追蹤（Trace）**：針對給定的 8 個整數，手寫記錄演算法前三個步驟的陣列狀態變化、最小值搜尋範圍以及交換紀錄 。
  * 整份作業要求**以手寫方式完成**於專用工作紙上，旨在透過動手實作加強對基礎排序邏輯與記憶體佈局的理解 。
    
---

### Assignment III — Linked List Selection Sort   
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

### Assignment IV — Hash Function Implementation

This assignment focuses on the **design, implementation, and evaluation of hash functions**, with the goal of understanding how different hashing strategies influence distribution quality and collision behavior. The work is divided into several major components:

* **Comparing different hashing strategies:**
  One part of the assignment involves analyzing how various design choices affect the performance of a hash function. In particular, we examine whether using a prime or non-prime table size leads to different collision rates, clustering patterns, or periodic behaviors. By experimenting with multiple configurations, we gain insight into why prime-sized tables often produce more uniform hash distributions.

* **Implementing custom hash functions for integers and strings:**
  The core coding task requires writing two functions, `myHashInt()` and `myHashString()`. The integer hash function includes a custom transformation based on fractional-part computation to improve uniformity, while the string hash function uses a polynomial-style approach that incorporates ASCII values, character positions, and weighted powers. To make the implementation more robust, we also take steps to control overflow by applying modulo operations at each stage.

* **Evaluating distribution under different inputs:**
  After implementing the hash functions, we test them across a variety of input patterns—including sequential integers, repeated strings, and random data—to observe how the outputs distribute across different table sizes. By comparing the resulting index sequences and identifying collisions or clustering, we can determine which designs are more effective and how the choice of table size influences the final results.

* **Writing documentation and preparing example code:**
  The assignment also requires producing clear documentation that explains the design choices, formulas, and behavior of the hash functions. All files, including sample code and comments, were written in C and C++ and tested within the Visual Studio Code environment to ensure correctness and consistency.

Overall, this assignment provides hands-on experience with the mathematical and practical aspects of hashing. It highlights how algorithm design, numerical properties like primality, and careful implementation choices work together to produce efficient and reliable hash functions.

---

### **Assignment V — Tree**
  這份作業主要是探討「**樹狀資料結構（Tree Structures）**」的綜合性報告，重點在於從理論定義、結構轉化到實際的視覺化構建，內容包含：

**1.樹狀結構的深度定義與特性**
作業詳細定義了八種常見的樹狀變體，並區分其結構約束與應用場景：

  * **基礎結構**：包含**一般樹（General Tree）**與**二元樹（Binary Tree）**，定義了父子節點的基本階層關係 。
  * **形狀與排序約束**：
    * **完全二元樹（Complete Binary Tree）**：強調節點由左至右填滿，適合陣列儲存 。
    * **二元搜尋樹（BST）**：加入「左小右大」的排序性質，支援中序遍歷輸出遞增序列 。
  * **自我平衡機制**：
    * **AVL Tree**：嚴格限制左右子樹高度差不超過 1，確保搜尋效能穩定在  。
    * **紅黑樹（Red-Black Tree）**：透過節點顏色（紅/黑）規則與旋轉，在插入/刪除頻繁的情境下提供更穩定的效能 。
    * **堆積結構**：介紹了 **Max Heap** 與 **Min Heap**，分別用於快速取得最大值與最小值，是實作優先權佇列的核心 。

**2. 家族演化與結構轉化分析**
作業透過階層圖（Hierarchy Diagram）說明了不同樹之間是如何透過「增加約束」演化而來的：

  * **演化路徑**：
    * **General Tree**  限制子節點數  **Binary Tree** 。
    * **Binary Tree**  加入排序規則  **BST**  加入平衡機制  **AVL / Red-Black Tree** 。
    * **Complete Binary Tree**  加入父子大小關係  **Max/Min Heap** 。

**3. 實作構建與視覺化驗證**
針對一組給定的 20 個整數（37, 142, 5, ..., 160），作業展示了在不同規則下的構建過程 ：

  * **BST 構建**：遵循左小右大規則，遞迴決定插入位置 。
  * **平衡調整**：描述了 AVL 樹如何透過中序序列取中點遞迴構建，以及紅黑樹在插入時如何處理「雙紅（Red-Red）」衝突 。
  * **堆積建立（Heapify）**：說明了從最後一個非葉節點開始，由下而上（Bottom-up）調整結構以符合堆積性質的過程 。

**4. 實務應用與效能反思**
作業最後討論了不同場景下的最佳選擇：

  * **搜尋導向（Search-heavy）**：推薦 **AVL 樹**，因其平衡最嚴格，查詢路徑最短 。
  * **頻繁更新（Frequent Updates）**：推薦 **紅黑樹**，因其旋轉調整次數較少，效能較均衡 。
  * **靜態資料搜尋**：推薦 **排序陣列 + 二分搜尋**，在無需更新的情境下最節省記憶體且實作簡單 。
