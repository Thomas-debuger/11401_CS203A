# p.5 Operations and Time Complexity

---

## 0️⃣ 共同前提

### Heap 一定要維持兩件事

1. **完全二元樹（形狀不能亂）**
2. **Heap-order（父 ≥ 子 或 子 ≥ 父）**

👉 所有操作的目的只有一個：
**「做完事情後，把這兩件事修好」**

## 1️⃣ `insert(x)` — 插入新元素

## 每次新增或刪除節點後，Heap 會自動「上浮（bubble up）」或「下沉（bubble down）」來保持順序性。

## 做法
> 把新資料 `x` 放進 Heap，
> 然後想辦法讓 Heap 不壞掉。

## 正確步驟

### Step 1：放在「最後一個位置」

* 為了保持 **完全二元樹**
* 在陣列就是：`push_back(x)`

⚠️ **不能亂放**

### Step 2：檢查 Heap-order

**1.Max heap:**   
* 和 **parent 比**
* 如果 `x > parent`
  → 交換
* 一直往上比，直到：

  * x <= parent
  * 或到 root

**1.Min heap:**   
* 和 **parent 比**
* 如果 `x < parent`
  → 交換
* 一直往上比，直到：

  * x >= parent
  * 或到 root

這個動作叫：
👉 **sift-up（上浮）**

## 為什麼是 O(log n)？

* Heap 高度 = log n
* 最多只會一路換到 root

## 一句話記憶法（考試）

> **Insert = 放最後 → 一路往上換**

---

## 2️⃣ `extract_root()` — 移除最大值（或最小值）

## 每次新增或刪除節點後，Heap 會自動「上浮（bubble up）」或「下沉（bubble down）」來保持順序性。

## 做法

> 把 Heap 裡「最重要的」元素拿走
> （Max Heap = 最大值）
> （Min Heap = 最小值） 

## 為什麼不能直接刪 root？

❌ 直接刪 → 形狀壞掉
❌ 陣列會有洞

## 正確步驟

### Step 1：拿走 root（先記起來）

* 這就是你要回傳的答案

### Step 2：用「最後一個節點」補 root

* 保持完全二元樹
* 陣列：把最後一個丟到 index 0

### Step 3：修 Heap-order（sift-down）

**1.Max heap:**
* root 可能太小
* 跟 **較大的子節點** 比
* 如果子節點比較大 → 交換
* 一路往下

**2.Min heap:**
* root 可能太大
* 跟 **較小的子節點** 比
* 如果子節點比較小 → 交換
* 一路往下

這個動作叫：
👉 **sift-down（下沉）**

## 為什麼是 O(log n)？

* 只會沿著樹往下走一條路
* 高度 = log n

## 一句話記憶法

> **Extract = 最後補上 → 一路往下換**

---

## 3️⃣ `peek_root()` — 看最大值或最小值（不刪）

## 做法

> 看一下目前最重要的是誰，不刪掉

## 怎麼做？

* 直接回傳 `heap[0]`

## 為什麼是 O(1)？

* 不用比較
* 不用交換
* root 永遠在固定位置

## 一句話記憶法

> **Peek = 看 root，不動它**

---

## 4️⃣ `heapify(i)` — 修好某一個節點的 Heap 性質

## 做法

> 假設：
>
> * 以 `i` 為 root 的左右子樹 **已經是 Heap**
> * 但 `i` 自己可能壞掉
>
> 👉 幫 `i` 把 Heap-order 修好

## 什麼時候會用？

* `extract_root()` 裡面一定用
* `build_heap()` 會大量用

## 正確做法

**1.Max Heap:**   
1. 找 `i`、left、right
2. 找 **三個中最大的**
3. 如果最大不是 `i`

   * 交換
   * 對交換後的位置 **繼續 heapify**

👉 本質：往下比大的（sift-down）

**2.Min Heap:**   
1. 找 `i`、left、right
2. 找 **三個中最小的**
3. 如果最小不是 `i`

   * 交換
   * 對交換後的位置 **繼續 heapify**

👉 本質：往下比小的（sift-down）

## 為什麼是 O(log n)？

* 最多一路往下
* 不會超過樹高

## 一句話記憶法

> **heapify = 從上往下修順序**

---

## 5️⃣ `build_heap(array)` — 把一個無序陣列 array 變成 Heap

🔥 **愛考陷阱**

## 做法

> 給你一個「亂七八糟的陣列」，
> 把它變成一個合法的 Heap。

## ❌ 錯誤直覺（慢）

```
一個一個 insert
→ O(n log n)
```

## ✅ 正確做法（快）

### 關鍵觀念

* **葉節點本來就不會壞 Heap**
* 只要從「最後一個非葉節點」開始

### 正確步驟

1. 找最後一個非葉節點
   `i = n/2 - 1`
2. 對 i 做 `heapify(i)`
3. i--，一直做到 0

```
為什麼從 n/2 - 1？   
因為：    
index ≥ n/2 的節點，一定是葉節點，葉節點不可能違反 heap-order   
👉 所以：    
只需要處理 0 ~ n/2 - 1   
```

## 為什麼是 O(n)？（重要但不用背推導）

* 底層節點很多，但幾乎不用動
* 越上面節點少，但才會動很多
* **總成本加起來是 O(n)**

## 一句話記憶法（考試）

> **Build Heap = 從後往前做 heapify**

# 📌 整理

| 操作      | 核心動作       | 關鍵詞       |
| ------- | ---------- | --------- |
| insert  | 放最後 → 上浮   | sift-up   |
| extract | 最後補 → 下沉   | sift-down |
| peek    | 看 root     | O(1)      |
| heapify | 從上往下修      | 下沉        |
| build   | 反向 heapify | O(n)      |

---

# p.5 Build Heap 實際例子

## 一、我們的測試陣列

假設輸入陣列是：

```
A = [4, 10, 3, 5, 1]
index: 0  1   2  3  4
```

長度 `n = 5`

## 關鍵規則（一定先記）

* **最後一個非葉節點 index = n/2 − 1**
* `n = 5`
  👉 `n/2 − 1 = 1`

👉 所以我們會從 **index = 1 → 0** 依序做 `heapify`

---

## 二、build_heap → Max Heap（完整實作）

## 初始狀態（還不是 Heap）

```
        4
       / \
     10   3
     / \
    5   1
```

## Step 1：i = 1，heapify(1)

### 看節點 1

* parent = 10
* children = 5、1

### 比大小（Max Heap）

* 最大是 **10**
* 不用交換

✅ 陣列不變：

```
[4, 10, 3, 5, 1]
```

---

## Step 2：i = 0，heapify(0)

### 看節點 0

* parent = 4
* children = 10、3

### 找最大

* 最大是 **10（index 1）**

❌ Heap-order 被破壞 → 交換

### 交換後

```
[10, 4, 3, 5, 1]
```

樹狀圖：

```
        10
       /  \
      4    3
     / \
    5   1
```

---

### 繼續 heapify（因為交換了）

#### 對 index = 1 再 heapify

* parent = 4
* children = 5、1
* 最大是 **5**

❌ 再交換

```
[10, 5, 3, 4, 1]
```

---

### index = 3 是葉節點 → 停止

---

## ✅ Max Heap 建立完成

### 最終結果

```
[10, 5, 3, 4, 1]
```

樹狀圖：

```
        10
       /  \
      5    3
     / \
    4   1
```

---

## 三、build_heap → Min Heap（同一陣列）

現在我們 **重新來一次**，
還是從原始陣列：

```
[4, 10, 3, 5, 1]
```

---

## Step 1：i = 1，heapify(1)

### 看節點 1

* parent = 10
* children = 5、1

### 找最小（Min Heap）

* 最小是 **1（index 4）**

❌ 交換

```
[4, 1, 3, 5, 10]
```

---

### index = 4 是葉節點 → 停止

---

## Step 2：i = 0，heapify(0)

### 看節點 0

* parent = 4
* children = 1、3

### 找最小

* 最小是 **1（index 1）**

❌ 交換

```
[1, 4, 3, 5, 10]
```

---

### 繼續 heapify（index = 1）

* parent = 4
* children = 5、10
* 最小是 **4**

✅ 不用交換 → 停止

---

## ✅ Min Heap 建立完成

### 最終結果

```
[1, 4, 3, 5, 10]
```

樹狀圖：

```
        1
       / \
      4   3
     / \
    5  10
```

---

## 四、重點對照

| 項目         | Max Heap | Min Heap |
| ---------- | -------- | -------- |
| 比較方式       | 找最大      | 找最小      |
| heapify 方向 | 往下       | 往下       |
| build 起點   | n/2 − 1  | n/2 − 1  |
| 時間複雜度      | O(n)     | O(n)     |

---

## 五、超重要「一句話版本」

> **build_heap = 從最後一個非葉節點開始，一路往前做 heapify**

---

## 六、考點

❓ 為什麼不是 O(n log n)？

答案：

> 因為底層節點很多但幾乎不動，上層節點少但才會動很多，
> **總成本加起來是 O(n)**

---

# p.5 build heap 補充: index變動規律

## 最核心的 3 條 index 規律（一定要背）

🔼 往上（找 i 的 parent）：**parent(i) = (i - 1) / 2**     
🔽 往左下（找 i 的 left child）：**left(i) = 2i + 1**    
🔽 往右下（找 i 的 right child）：**right(i) = 2i + 2**    
👉 整個 Heap 的 index 跳動，只靠這三條   

---

假設：
```
A = [4, 10, 3, 5, 1]
index: 0  1   2  3  4
```

## Max Heap 的 index 跳動

```
1 → 0 → 1 → 3
```

## Min Heap 的 index 跳動

```
1 → 4 → 0 → 1
```

## 一、Max Heap：為什麼是 1 → 0 → 1 → 3？

### 背景：我們在做什麼？

在 **build_heap（Max Heap）** 時，我們做的是：

```
i = 1
heapify(1)
i = 0
heapify(0)
```

---

## 🔹 第一步：`i = 1`

```
heapify(1)
```

### index = 1

* value = 10
* children = index 3 (5), index 4 (1)

👉 **不用交換**

### 👉 index 停在 1

這就是第一個 `1`

## 🔹 第二步：`i = 0`

```
heapify(0) 
```

### index = 0

* value = 4
* children = index 1 (10), index 2 (3)

### Max Heap 要找「最大」

* 最大是 **index 1**

❌ 違反 heap-order → 交換

👉 **index 從 0 跳到 1 (因index1為最大)**

這就是：

```
1 → 0 → 1
```

---

## 🔹 第三步：繼續 heapify（因為交換了）

現在 array 變成：

```
[10, 4, 3, 5, 1]
```

### 繼續 heapify(1)

* index = 1
* children = index 3 (5), index 4 (1)

Max Heap → 找最大
→ index 3（5）

❌ 再交換

👉 index 從 **1 → 3 (因index3為最大)**

---

## ✅ 所以 Max Heap 的完整跳動是：

```
1        （heapify(1)，沒動）
→ 0      （開始 heapify(0)）
→ 1      （與最大 child 交換）
→ 3      （繼續往下）
```

📌 **每一次往下，都是「跳到比較後該去的 child」**

---

## 二、Min Heap：為什麼是 1 → 4 → 0 → 1？

現在我們重新來，**同一個原始陣列**：

```
[4, 10, 3, 5, 1]
```

---

## 🔹 第一步：`i = 1`

```
heapify(1)
```

### index = 1

* value = 10
* children = index 3 (5), index 4 (1)

### Min Heap 規則

* parent ≤ children
* 要找 **最小**

→ 最小是 **index 4**

❌ 違反 → 交換

👉 index 從 **1 → 4**

這就是：

```
1 → 4
```

---

## 🔹 index = 4

* 是葉節點
* 沒 children

👉 停止

---

## 🔹 第二步：`i = 0`

```
heapify(0)
```

現在陣列是：

```
[4, 1, 3, 5, 10]
```

### index = 0

* children = index 1 (1), index 2 (3)
* Min Heap → 找最小

→ index 1

❌ 交換

👉 index 從 **0 → 1**

---

## 🔹 index = 1

* children = 3 (5), 4 (10)
* parent 已最小

👉 停止

---

## ✅ 所以 Min Heap 的完整跳動是：

```
1 → 4    （第一次 heapify）
→ 0 → 1  （第二次 heapify）
```

---

## 三、為什麼 Max / Min 的「方向不一樣」？

## 關鍵一句話（請背）

> **heapify 只會往「該交換的 child」走**

而：

| Heap 類型  | 要選的 child |
| -------- | --------- |
| Max Heap | 較大的 child |
| Min Heap | 較小的 child |

👉 所以：

* Max Heap：可能往左、也可能往右
* Min Heap：方向完全可能不同

---

## 四、考點

> 在 heapify 過程中，index 會移動到違反 heap-order 的子節點位置；
> Max Heap 會選較大的 child，Min Heap 會選較小的 child，因此兩者的 index 跳動路徑不同。

---

# p.6 Summary

---

## 1️⃣ Data structure type

### **Binary Tree (Complete)**

### 這一列在說什麼？

Heap 是一種 **二元樹（Binary Tree）**，而且是 **完全二元樹（Complete Binary Tree）**。

### 什麼是 Binary Tree？

* 每個節點 **最多 2 個小孩**

  * left child
  * right child

### 什麼是 Complete？

* 每一層 **盡量填滿**
* 最底層 **從左到右填**

```
        O
       / \
      O   O
     / \  /
    O   O O
```

### 為什麼一定要 Complete？

👉 **為了用陣列存**

如果不是 Complete：

* 陣列會有洞
* index 規則會壞掉
* 操作會變慢

### 考試一句話

> Heap 是一棵完全二元樹

---

## 2️⃣ Order property

### **Parent ≥ Children（Max） / ≤ Children（Min）**

### 這一列在說什麼？

Heap 有「大小規則」，但只管 **父子之間**。

### Max Heap

```
parent ≥ left child
parent ≥ right child
```

👉 最大值一定在 root

### Min Heap

```
parent ≤ left child
parent ≤ right child
```

👉 最小值一定在 root

### 新手最常誤會

❌ Heap 不是「全部排序好」
✅ 只保證 **root 最重要**

### 考試一句話

> Heap 只保證父子順序，不保證兄弟順序

---

## 3️⃣ Stored in

### **Array (most efficient)**

### 這一列在說什麼？

Heap **幾乎一定用陣列實作**，不是用指標樹。

### 為什麼陣列這麼好？

因為 Complete Binary Tree 有固定 index 規律：

| 關係          | 公式          |
| ----------- | ----------- |
| parent      | (i − 1) / 2 |
| left child  | 2i + 1      |
| right child | 2i + 2      |

### 好處

* 不用指標
* 記憶體連續
* Cache-friendly
* 操作快

### 考試一句話

> Heap 最有效率的實作方式是陣列

---

## 4️⃣ Typical uses

### **Priority Queue, Scheduling, Heapsort**

### 這一列在說什麼？

Heap 是為了解決「**誰先處理**」的問題。

### Priority Queue（最重要）

* 每個元素有 priority
* 永遠先取最高（或最低）

📌 幾乎所有 Priority Queue 都用 Heap

### Scheduling（排程）

* CPU 工作排程
* 印表機佇列
* 作業系統

👉 誰最急、誰最重要先做

### Heapsort

* 利用 Heap 的「root 是最大/最小」
* 不需要額外空間
* 時間穩定 O(n log n)

### 考試一句話

> Heap 常用來實作 Priority Queue

---

## 5️⃣ Performance

### **Logarithmic insertion / removal**

### 這一列在說什麼？

Heap 的插入、刪除都很快。

### 為什麼是 log n？

因為：

* Heap 是完全二元樹
* 高度 = log n
* 交換只會沿一條路

### 操作時間總整理

| 操作         | 時間       |
| ---------- | -------- |
| insert     | O(log n) |
| extract    | O(log n) |
| peek       | O(1)     |
| build_heap | O(n)     |

### 考試一句話

> Heap 的效率來自於樹高是 log n

## 🔥 全表「白話總結版」

> Heap 是一種用陣列存的完全二元樹，
> 只保證父子順序，因此可以在 O(log n) 時間內快速插入與刪除，
> 非常適合用來實作 Priority Queue。

## 🎯 考點

**Q：為什麼 Heap 適合 Priority Queue？**

> 因為 Heap 保證 root 是最大或最小值，且插入與刪除的時間複雜度為 O(log n)。

---

# p.7 Why Order Means Priority in a Heap 

---

### 什麼是 Priority？

> **Priority = 重要性或緊急程度**

在 **Priority Queue** 中：

* 每個元素都有一個 **priority value**
* **先處理 priority 較高的元素**

  * 數值可能是「大代表高」
  * 或「小代表高」（依定義）

### Priority 的實際意義（例子）

| 情境                   | Priority 判斷                        |
| -------------------- | ---------------------------------- |
| 急診病人（triage level 5） | **高 priority（最緊急）**                |
| 作業系統行程（剩餘時間最短）       | **高 priority（Shortest Job First）** |
| 網路封包（高 QoS）          | **高 priority（先傳送）**                |

### 與 Heap 的關係（一定會考）

* **Heap 用數值大小代表 priority**
* **Root = 最高 priority**

  * Max Heap：數值大 → priority 高
  * Min Heap：數值小 → priority 高

### 一句話考試答案（必背）

> Priority Queue 是一種每次都先取出「最高優先權」元素的資料結構。

### 結論
> **Priority = 先做誰**
> Heap 是 Priority Queue 的常見實作方式

### 實際例子

| 情境                           | Priority 定義        | 使用 Heap      |
| ---------------------------- | ------------------ | ------------ |
| 急診室病人（triage 分級，數字越大越緊急）     | 數字大 → 先處理          | **Max Heap** |
| 急診室病人（triage 分級，數字越小越緊急）     | 數字小 → 先處理          | **Min Heap** |
| 作業系統行程排程（Shortest Job First） | 剩餘時間短 → 高 priority | **Min Heap** |
| 作業系統行程排程（優先權數值越大越重要）         | priority 大 → 先執行   | **Max Heap** |
| 印表機工作排程                      | 文件大小小 → 先印         | **Min Heap** |
| 遊戲排行榜                        | 分數高 → 排前面          | **Max Heap** |
| 網路封包傳送（QoS 越高越重要）            | QoS 大 → 先送         | **Max Heap** |
| 醫院掛號叫號（號碼小先看）                | 號碼小 → 先處理          | **Min Heap** |
| CPU 即時任務（deadline 最早）        | 截止時間早 → 先處理        | **Min Heap** |
| 事件模擬（最早發生的事件）                | 時間早 → 先發生          | **Min Heap** |
| 飛機降落排程     | 燃料越少越緊急     | **Min Heap** |
| 飛機降落排程     | 緊急等級越高      | **Max Heap** |
| 醫院手術室排程    | 等待時間最久先     | **Max Heap** |
| 醫院手術室排程    | 病情最嚴重先      | **Max Heap** |
| 客服工單系統     | 客戶等級越高      | **Max Heap** |
| 客服工單系統     | 工單建立時間越早    | **Min Heap** |
| 網站請求排程     | 請求處理時間最短    | **Min Heap** |
| 電梯控制系統     | 最近樓層先服務     | **Min Heap** |
| 物流配送系統     | 截止時間最早      | **Min Heap** |
| 物流配送系統     | 貨物價值最高      | **Max Heap** |
| 股票交易撮合（買單） | 出價最高        | **Max Heap** |
| 股票交易撮合（賣單） | 售價最低        | **Min Heap** |
| 遊戲任務系統     | 任務獎勵最高      | **Max Heap** |
| 遊戲任務系統     | 剩餘時間最少      | **Min Heap** |
| 音樂播放清單     | 使用者喜好分數最高   | **Max Heap** |
| 搜尋引擎結果排序   | 相關度最高       | **Max Heap** |
| 垃圾回收排程     | 最久未使用物件     | **Max Heap** |
| 事件模擬系統     | 發生時間最早      | **Min Heap** |

---

# p.9 小結

* Heap 是用來快速找到最大或最小值的樹狀資料結構
* 每個父節點跟子節點有順序性（order property）
* 每個節點有「關鍵值」決定優先權
* 根節點永遠是最高優先級
* 插入、刪除、建 Heap 都很快（O(log n)）
