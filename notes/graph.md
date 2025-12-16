# p.4

## 🗺️ 圖（Graph）的基本介紹

圖是一種用來表示物件之間關係的資料結構。你可以將它想像成一個地圖，上面有城市和連接城市的道路。

### 1. 圖的定義： $G = (V, E)$

圖 $G$ 是由兩個集合組成的：

* **$V$（Vertices 集合）：** 頂點集合。
* **$E$（Edges 集合）：** 邊集合。

### 2. $V$: 頂點集合 (Vertices)

* **定義：** $V$ 是一組頂點（vertices），它們是圖中的基本元素。
* **別稱：** 頂點也被稱為**節點（nodes）**或**點（points）**。
* **在圖中的例子：** 在左側的圖形中，**$V = \{1, 2, 3, 4, 5, 6\}$**。每一個編號的圓圈都是一個頂點。

### 3. $E$: 邊集合 (Edges)

* **定義：** $E$ 是一組邊（edges），它們表示頂點之間的連接關係，是圖中實際存在的邊的集合。
* **數學表示：** $E \subseteq \{\{x, y\} \mid x \in V \text{ and } y \in V \text{ and } x \neq y\}$
    * 這表示每一條邊都是 $V$ 中兩個**不同**頂點的配對 $\{x, y\}$。
* **別稱：** 邊也被稱為**連結（links）**或**線（lines）**。
* **特性 (Unordered Pairs)：** 投影片中特別提到，邊是**無序配對（unordered pairs）**。
    * **無序**的意思是，邊 $\{x, y\}$ 和邊 $\{y, x\}$ 是**同一條**邊。
    * 這種類型的圖我們稱為**無向圖 (Undirected Graph)**。
* **在圖中的例子：** 左側圖形中的邊集合 $E$ 包含：
    * {1,5}, {1,2}
    * {2,3}, {2,5}
    * {3,4}
    * {4,5}, {4,6}

---

## 💡 總結與應用

簡而言之：

* **圖 = 頂點 (物件) + 邊 (關係)**
* 這個投影片展示的是一個**無向圖**，因為邊是無序的。

圖在電腦科學中應用非常廣泛，例如：

* **社交網路：** 頂點是人，邊是朋友關係。
* **地圖和導航：** 頂點是地點，邊是道路。
* **網際網路：** 頂點是電腦，邊是網路連線。

## 補充

### 💡 額外知識點： 真子集 (Proper Subset)

* **符號：** $\subset$ 或 $\subsetneq$
* **意義：** $A \subset B$ 表示 $A$ 是 $B$ 的子集，**並且** $A$ 不等於 $B$（即 $B$ 中至少有一個元素不在 $A$ 中）。
* **區別：**
    * $A \subseteq A$ 成立 (自己是自己的子集)。
    * $A \subset A$ 不成立 (除非 $A$ 是空集)。

---

# p.14 Isomorphism / Isomorphic

## 🔄 同構性 (Isomorphism) 的核心概念

### 1\. 什麼是圖的同構？

兩個圖 $G_1 = (V_1, E_1)$ 和 $G_2 = (V_2, E_2)$ 如果滿足**同構**的條件，就表示它們**本質上是同一個圖**，只不過它們的**繪製方式、頂點的標籤（名稱）或位置不同**而已。

你可以將「同構」想像成圖的**變形**：

  * 如果我可以在**不剪斷或黏合任何邊**的情況下，只透過移動、旋轉或拉伸頂點和邊，將圖 $G_1$ 變成圖 $G_2$，那麼這兩個圖就是同構的。

### 2\. 同構的嚴格數學定義

要判斷兩個圖 $G_1$ 和 $G_2$ 是否同構，需要找到一個**一對一 (one-to-one)** 且**映成 (onto)** 的函數 $f$，將 $G_1$ 的頂點集合 $V_1$ 映射到 $G_2$ 的頂點集合 $V_2$ ($f: V_1 \to V_2$)，並且要滿足以下條件：

* 對於 $G_1$ 中的任意兩個頂點 $u$ 和 $v$，如果它們之間有邊相連，那麼它們在 $G_2$ 中對應的頂點 $f(u)$ 和 $f(v)$ **之間也必須有邊相連**，反之亦然。

**簡單來說：** 頂點之間的連接關係必須完全保留。

-----

## 🖼️ 簡報圖片的說明 (同構體解釋)

| 圖形 | 描述 | 同構性解釋 |
| :---: | :--- | :--- |
| **Original** | 一個有五個頂點的圖形，包含一個孤立的頂點。 | 作為基準圖。 |
| **五個變體** | 每個變體雖然看起來位置和角度不同，但它們都：<br>1. 總共有 **5 個** 頂點。<br>2. 有 **4 條** 邊。 | 由於它們的 **頂點數**、**邊數** 和 **頂點之間的連接關係** 完全相同，只是頂點的繪製位置變了，所以它們彼此之間都是**同構的**。 |

### 💡 總結投影片想表達的：

圖的同構性告訴我們：在資料結構中，**一個圖的結構和關係**比它的**外觀畫法**或**頂點的標籤**更重要。如果兩個圖的結構關係一樣，它們在圖論和電腦科學的演算法中會被視為是等價的。

-----

# p.15 Classification

## 一、先知道：Graph 在幹嘛？

**Graph = 用來表示「關係」的資料結構**

* **Node (Vertex)**：點 → 人、城市、地點
* **Edge**：線 → 關係、道路、連結

📌 重點：

* Graph 不在存資料本身，而是在存「誰跟誰有關係」

## 二、這一頁在教的「8 種 Graph 分類」

### 1️⃣ Undirected Graph（無向圖）

**Edges 沒有方向**

👥 例子：朋友關係

* A 跟 B 是朋友
  → B 也一定是 A 的朋友

```
A —— B
```

📌 特徵

* 邊是雙向的
* 常用在「對等關係」

### 2️⃣ Directed Graph（有向圖 / Digraph）

**Edges 有方向**

📱 例子：Instagram 追蹤

* A 追蹤 B
* ❌ 不代表 B 追蹤 A

```
A → B
```

📌 特徵

* 邊有箭頭
* 常用在「非對等關係」

### 3️⃣ Weighted Graph（加權圖）

**每條邊都有「成本 / 權重」**

🗺️ 例子：Google Maps

* 城市 A → 城市 B
* 距離 5 公里 / 10 分鐘

```
A --(5km)--> B
```

📌 用途

* 找最短路徑（之後會學 Dijkstra）

### 4️⃣ Unweighted Graph（無權重圖）

**所有邊都一樣重要**

🎲 例子：桌遊地圖

* 走一步 = 一次移動
* 不管遠近，都是「1 步」

📌 用途

* BFS（最少步數問題）

### 5️⃣ Cyclic Graph（有環圖）

**圖中存在「繞一圈回到原點」的路**

🏙️ 例子：城市環狀道路

```
A → B → C → A
```

📌 重點

* 可以「走一圈回來」
* 容易產生「無限循環」

### 6️⃣ Acyclic Graph（無環圖）

**沒有任何環**

👨‍👩‍👧 例子：家族樹

* 父母 → 子女
* 不可能繞回祖先

📌 特殊類型

* **Tree = 一種 Acyclic Graph**

### 7️⃣ Connected Graph（連通圖）

**任兩個節點之間都有路可以走**

🛣️ 例子：有橋的道路網

📌 重點

* 從任何地方都走得到其他地方
* 常出現在「是否能全部走訪」問題

### 8️⃣ Disconnected Graph（非連通圖）

**有些節點彼此完全到不了**

🏝️ 例子：沒有橋的島嶼

```
A —— B      C —— D
```

📌 重點

* 圖被分成好幾塊
* BFS / DFS 可能一次只能走一部分

---

## 三、為什麼要學這些分類？（考試 & 實作重點）

老師其實是在教你三件事：

### ✅ 1. 「我要用哪一種 Graph 來建模？」

* 社群 → Directed / Undirected
* 地圖 → Weighted
* 家族 → Acyclic

### ✅ 2. 「我該用哪個演算法？」

| 圖的性質 | 常用演算法    |
| ---- | -------- |
| 無權重  | BFS      |
| 有權重  | Dijkstra |
| 有環   | 要注意無限循環  |
| 無環   | 拓撲排序     |

### ✅ 3. 考試最愛問的觀念題

* Tree 一定是 acyclic 嗎？✅
* Directed graph 一定有 cycle 嗎？❌
* Connected graph 一定只有一條路？❌

## 四、一句話總結（考前救命版）

* **這一頁是在教：Graph 可以用不同「性質」來描述現實世界，而不同性質會影響你「怎麼走圖、用什麼演算法」。**

---

## 補充 Unweighted Graph 與 BFS

## 一句話先記住（考試版）

* **在 Unweighted Graph 中，BFS 找到的一定是「最少邊數（最短路徑）」**

這就是它們會被綁在一起教的原因。

---

## 一、什麼是 Unweighted Graph？

**每條邊都一樣重要（沒有距離、時間、費用差別）**

📌 換句話說：

* 走一條邊 = 花費 1 單位
* 不管邊長怎樣，都算 **1 步**

---

## 二、BFS 在做什麼？

**BFS（Breadth-First Search）= 一層一層往外擴**

想像你丟石頭進水裡 🌊：

* 第 0 層：起點
* 第 1 層：走 1 條邊能到的點
* 第 2 層：走 2 條邊能到的點
* 第 3 層：走 3 條邊能到的點

📌 BFS 是用 **Queue（佇列）**，保證「先到的層先處理」。

---

## 三、為什麼 BFS 在無權重圖一定是最短路？

### 🎯 關鍵原因：

* **BFS 第一次走到某個節點時，用的邊數一定最少**

因為：

1. 所有邊花費都一樣（都是 1）
2. BFS 是「先走 1 步，再走 2 步，再走 3 步」
3. 所以你不可能用 3 步先到，再用 2 步後到

---

## 四、用超直覺例子說明

### 📍 地圖（無權重）

```
A -- B -- D
 \        /
  \-- C --
```

從 A 出發：

* A → B → D（2 步）
* A → C → D（2 步）

### BFS 的走法：

* 第 0 層：A
* 第 1 層：B, C
* 第 2 層：D

👉 **第一次到 D = 2 步（最少）**

---

## 五、那 DFS 為什麼不行？

DFS（Depth-First Search）會：

```
A → B → D （先走很深）
```

如果有另一條更短路：

```
A → C → D
```

❌ DFS 不保證先找到短的
❌ 它只保證「先走到底」

---

## 六、為什麼「有權重」就不能用 BFS？

看這個例子：

```
A --(100)--> B
A --(1)--> C --(1)--> B
```

BFS 只看「邊數」：

* A → B（1 條邊）← BFS 會選這條

但實際最短距離是：

* A → C → B（總成本 2）

👉 所以 **有權重 → 要用 Dijkstra**

---

## 七、考試超常出的一句話（請背）

* **BFS 適用於 Unweighted Graph，因為它能保證找到最少邊數的最短路徑。**
* (BFS是一種查詢最短路徑的方法，當題目給一個Unweighted Graph的圖，我們可以用BFS來找到最少邊數的最短路徑)
---

## 八、小總結表

| 圖類型    | 找最短路用        |
| ------ | ------------ |
| 無權重圖   | ✅ BFS        |
| 有權重（正） | Dijkstra     |
| 有負權重   | Bellman-Ford |

---

# p.19 - 23

## 一、但 Adjacency Matrix / List 存的是「直接邊」

### 👉 Adjacency Matrix / List 只記：

* **「有沒有『一條邊』直接相連」**

❌ 不記：

* 走不走得到
* 中間經過誰
* 間接路徑

## 二、用你的問題來對照

### 問題：

* 為什麼 `matrix[0][3] = 0` ？

### 答案：

因為 **沒有一條「直接」的邊：**

```
0 → 3   ❌（不存在）
```

雖然有：

```
0 → 2 → 3   ✔️（兩條邊，間接）
```

但 **Adjacency Matrix 不會因為「可以間接走到」就標 1**

## 三、用一句話區分（考試超重要）

* **Adjacency = 是否「相鄰（直接）」
* Path = 是否「走得到（可達）」* 

## 四、表示「走得到」

那就不是 Adjacency Matrix 了，而是：

### ✅ Reachability(可達性) / Transitive Closure

例如用：

* Floyd–Warshall
* 重複 BFS / DFS

最後得到的是：

|       | 0 | 1 | 2 | 3 |
| ----- | - | - | - | - |
| **0** | 1 | 0 | 1 | 1 |
| **1** | 1 | 0 | 1 | 1 |
| **2** | 1 | 0 | 0 | 1 |
| **3** | 1 | 0 | 1 | 0 |

（這張表才是在說「走不走得到」）

### 正確觀念是：

* **只有「直接邊」才算 adjacency**

---

# p.25 Pros & Cons Study: Adjacency Matrix

## 一、先用一句話抓重點 

> **Adjacency Matrix = 用空間換速度**
> 👉 查邊超快，但很吃記憶體

## 二、Pros（優點）

### ✅ 1. **O(1) edge lookup**

* `matrix[u][v]` 立刻知道有沒有邊

🔹 意思是什麼？

* 不管圖有多大
* 只要看一格矩陣
* **永遠是常數時間**

📌 例子：

```cpp
if (matrix[0][3] == 1) { ... }
```

📝 考試常問：

* 「哪一種表示法能最快判斷兩點是否相連？」
* ✔️ **Adjacency Matrix**

### ✅ 2. **Simple implementation**

* 好寫(二維矩陣)、好懂、好畫

🔹 為什麼簡單？

* 就是 2D array
* 沒有 pointer、linked list
* 新手最容易上手

### ✅ 3. **Works well for dense graphs**

* 適合「邊很多」的圖

🔹 Dense graph 是什麼？

* 幾乎每個點都跟很多點相連
* 邊數 E ≈ V²

📌 這時候：

* Matrix 本來就要 V² 空間
* **不浪費**

### ✅ 4. **Good for Floyd–Warshall**

* 適合需要「快速查任意兩點關係」的演算法

🔹 為什麼？

* Floyd–Warshall 是三層 for 迴圈
* 一直在用 `dist[i][j]`

📌 用 Matrix：

```text
dist[i][j] = min(dist[i][j], dist[i][k] + dist[k][j])
```

👉 非常自然、非常快

**參考網站:https://ithelp.ithome.com.tw/m/articles/10209186**

### ✅ 5. **Natural fit for weighted graphs**

* 很適合「加權圖」

🔹 不是存 0 / 1，而是：

```
matrix[u][v] = weight
```

📌 沒邊可以設：

* ∞
* -1
* 0（視題目）

👉 **Dijkstra / Floyd 都很愛**

## 三、Cons（缺點）

### ❌ 1. **O(V²) space**

* 不管有沒有邊，都要存 V × V

📌 極端例子：

* 10000 個點
* 只有 10 條邊
* 還是要存 100M 格

👉 **非常浪費**

### ❌ 2. **Wasteful for sparse graphs**

> 現實世界多半是 sparse graph (點多邊少)

🔹 現實例子：

* 社群網路
* 道路圖
* 電腦網路

👉 點很多，但每個點只連幾個

📌 Matrix 結果：

* 幾乎都是 0
* 空間白白浪費

### ❌ 3. **Getting neighbors is O(V)**

* 找某點的鄰居要掃整排

📌 問題：

```text
0 的鄰居是誰？
```

你必須：

```
matrix[0][0..V-1] 全掃
```

👉 **O(V)**

⚠️ 這對 BFS / DFS 很傷

### ❌ 4. **Harder to insert/remove vertices**

* 動態改圖很麻煩

🔹 為什麼？

* 新增一個點 → 矩陣要變大
* 要重建整個 V×V

📌 Adjacency List：

* 只要加一個 list
* 容易很多

## 四、Best for（什麼時候該用）

### ✅ 適合用 Adjacency Matrix 的情況

✔️ **Dense graph**    
✔️ **常常要查「u 到 v 有沒有邊」**    
✔️ **Weighted graph**    
✔️ **Floyd–Warshall / 全對全距離**    
✔️ **教學、考試、概念展示**    

## 五、考試速記表

| 情境             | 選誰               |
| -------------- | ---------------- |
| 查邊最快           | Adjacency Matrix |
| BFS / DFS      | Adjacency List   |
| Dense graph    | Matrix           |
| Sparse graph   | List             |
| Floyd–Warshall | Matrix           |
| 節省空間           | List             |

## 六、一句話背起來（考前救命）

* **Matrix：快查邊、吃空間
* List：省空間、走鄰居快* 

---

# p.26 Pros & Cons Study: Adjacency List

## 一、先用一句話抓重點 

* **Adjacency List：省空間、走鄰居快，最適合 BFS / DFS**

## 二、Pros（優點）

### ✅ 1. **O(V + E) space**

* 只存「真的存在的邊」

🔹 為什麼是 O(V + E)？

* V 個頂點（每個一個 list）
* E 條邊（每條邊只存一次／兩次）

📌 對 sparse graph：

* E ≪ V²
* **非常省記憶體**

👉 考試關鍵字：

* *Excellent for sparse graphs*

### ✅ 2. **Fast traversal：O(deg(v))**

* 找某節點的鄰居不用掃整排

🔹 Matrix：

* 掃 0～V-1 → O(V)

🔹 List：

* 只看 `adj[v]` 裡的節點 → O(deg(v))
   * deg(v) 代表v節點連的邊數量

📌 對 BFS / DFS 是關鍵加速點

### ✅ 3. **BFS / DFS = O(V + E)**

* 幾乎是「最佳」複雜度

🔹 為什麼？

* 每個點訪問一次 → O(V)
* 每條邊最多看一次 → O(E)

### ✅ 4. **Easy to scale to large graphs**

* 適合百萬節點等級

📌 現實世界：

* 社群網路
* 地圖
* 網路拓撲

如果用 Matrix：

* V = 1,000,000
* 需要 10¹² 格 ❌ 不可能

List：

* 只存實際邊 ✔️

### ✅ 5. **Insert / delete edges is O(1)**

* 動態改圖很方便

🔹 為什麼？

* 只要在某個 list 加或刪一個元素
* 不用動整個結構

📌 對「動態圖」超重要

## 三、Cons（缺點）逐條解釋

### ❌ 1. **Edge lookup = O(deg(u))**

* 查 `(u, v)` 有沒有邊比較慢

🔹 做法：

```text
for each x in adj[u]:
    if x == v → found
```

📌 對比：

* Matrix：O(1)
* List：O(deg(u))

👉 若常常查「有沒有邊」，List 不適合

### ❌ 2. **Implementation 稍微複雜**

* 要用 linked list / vector

🔹 相比 Matrix：

* 多了指標
* 結構比較複雜

📌 但在實務上這不是大問題

### ❌ 3. **Memory overhead**

* 很多小節點有額外成本

🔹 每個 list node：

* 存 vertex
* 存 pointer(s)

📌 在極端情況下：

* overhead 可能比資料本身大

## 四、Best for（什麼時候用 Adjacency List）

### ✅ 適合用 List 的情況

✔️ **Sparse graphs（最重要）**   
✔️ **BFS / DFS**   
✔️ **Dijkstra / Prim / Kruskal**   
✔️ **大型圖（百萬節點）**   
✔️ **需要常常加刪邊**   

## 五、跟 Adjacency Matrix 的對照表

| 情境             | 選誰     |
| -------------- | ------ |
| 查邊最快           | Matrix |
| 省空間            | List   |
| BFS / DFS      | List   |
| Dense graph    | Matrix |
| Sparse graph   | List   |
| Floyd–Warshall | Matrix |
| 大型真實世界圖        | List   |

## 六、考試一段話模板（直接背） 

* **Adjacency lists store only existing edges, requiring O(V + E) space and allowing efficient traversal of neighbors in O(deg(v)). Therefore, BFS and DFS run in O(V + E), making adjacency lists ideal for sparse and large graphs.**

*  **鄰接表僅儲存已存在的邊，需要 O(V + E) 的空間，並允許在 O(deg(v)) 的時間內高效遍歷鄰居。因此，廣度優先搜尋 (BFS) 和深度優先搜尋 (DFS) 的時間複雜度均為 O(V + E)，這使得鄰接表成為稀疏圖和大型圖的理想選擇。**

## 七、一句話終極記憶 🔥

* **List 省空間、走鄰居
* Matrix 查邊快、吃空間* 

---

# 補充：為何List較適合BFS跟DFS

## 一、直覺版答案 

* **BFS / DFS 的工作 = 不斷「找鄰居」
* Adjacency List = 鄰居已經幫你列好
* Adjacency Matrix = 要自己一個一個找**

## 二、BFS / DFS 在做什麼？

不管是 BFS 還是 DFS，核心只有一句話：

* **對目前節點 v，走訪所有鄰居**

### 偽碼（重點行）

```text
for each neighbor u of v:
    if u not visited:
        visit u
```

## 三、用 Adjacency Matrix 找鄰居（慢）

### 做法

```text
for i = 0 to V-1:
    if matrix[v][i] == 1:
        i 是鄰居
```

### 時間

* 每個點：**O(V)**
* BFS / DFS 會對每個點做一次

👉 **總時間 = O(V²)**

⚠️ 就算這個點只有 1 個鄰居，也要掃整排

## 四、用 Adjacency List 找鄰居（快）

### 做法

```text
for each u in adjList[v]:
    u 是鄰居
```

### 時間

* 每個點：**O(deg(v))**
* 全部加起來：所有邊只被看一次

👉 **總時間 = O(V + E)**

✔️ 只看「真的存在的邊」

## 五、直接比較（考試最愛）

| 項目            | Matrix | List         |
| ------------- | ------ | ------------ |
| 找 v 的鄰居       | O(V)   | O(deg(v))    |
| BFS / DFS 總時間 | O(V²)  | **O(V + E)** |
| Sparse graph  | ❌ 很慢   | ✅ 很快         |

## 六、為什麼這在「稀疏圖」特別重要？

現實世界幾乎都是：

* V 很大
* E 很小

📌 例子：

* 1 萬個人
* 每人平均 5 個朋友

### Matrix：

* BFS ≈ 10⁸ 次檢查（幾乎都是 0）

### List：

* BFS ≈ 5 萬條邊

👉 差距巨大

## 七、一句話必背（考前）🔥

* **BFS / DFS = 走邊
* List = 只走真的邊
* Matrix = 邊不邊都要看**

# p.28 時間複雜度比較

## 一、解釋

### 🔹 1. Edge lookup（查是否有邊）

| Matrix   | List          |
| -------- | ------------- |
| **O(1)** | **O(deg(v))** |

📌 為什麼？

* Matrix：直接看 `matrix[u][v]`
* List：要掃 `u` 的鄰居清單

📝 考試用語：

* Adjacency matrix supports constant-time(恆定時間) edge lookup.

### 🔹 2. Space（空間）

| Matrix    | List         |
| --------- | ------------ |
| **O(V²)** | **O(V + E)** |

📌 關鍵：

* Matrix：不管有沒有邊，都要存
* List：只存存在的邊

👉 Sparse graph → List 完勝

### 🔹 3. Traversal BFS / DFS（重點）

| Matrix    | List         |
| --------- | ------------ |
| **O(V²)** | **O(V + E)** |

📌 原因（一定要會講）：

* Matrix：每個點都要掃整排找鄰居
* List：只走實際存在的邊

👉 因此 **List 適合 BFS/DFS**

### 🔹 4. Best for（適合什麼圖）

| Matrix       | List          |
| ------------ | ------------- |
| Dense graphs | Sparse graphs |

📌 Dense：

* E 接近 V²
* Matrix 不浪費

📌 Sparse：

* E ≪ V²
* List 省空間

### 🔹 5. Neighbor iteration（找鄰居）

| Matrix   | List          |
| -------- | ------------- |
| **O(V)** | **O(deg(v))** |

📌 白話：

* Matrix：不管幾個鄰居，都要掃 V 個
* List：有幾個鄰居，就跑幾次

### 🔹 6. Implementation（實作難度）

| Matrix | List     |
| ------ | -------- |
| Simple | Moderate |

📌 原因：

* Matrix：2D array
* List：vector / linked list + pointer

### 🔹 7. Dynamic graph?（動態圖）

| Matrix | List |
| ------ | ---- |
| Hard   | Easy |

📌 為什麼？

* Matrix：加點 → 重建整個矩陣
* List：加一個 list 就好

---

## 二、考試必背總結表

| 情境             | 選誰     |
| -------------- | ------ |
| 查邊最快           | Matrix |
| BFS / DFS      | List   |
| 省空間            | List   |
| Dense graph    | Matrix |
| Sparse graph   | List   |
| 動態加刪邊          | List   |
| Floyd–Warshall | Matrix |

## 三、申論題模板 

* Adjacency matrices provide O(1) edge lookup but require O(V²) space, making them suitable for dense graphs.
* Adjacency lists use O(V + E) space and allow efficient traversal in O(V + E), thus preferred for sparse graphs and BFS/DFS.

## 四、一句話記憶 

* **Matrix：快查邊、吃空間**
* **List：省空間、走鄰居**

---

# p.29 ADT:Graph

## 一、objects 在說什麼？

```text
objects:
a nonempty set of vertices and a set of undirected edges
```

白話翻譯 👇

**一個圖包含：**

* 一組「頂點（vertices）」
* 一組「無向邊（edges）」
* 每條邊是「兩個頂點的配對」

📌 重點：

* 這裡講的是 **Undirected Graph**
* 還沒提「怎麼存」

---

## 二、functions

這一段是在定義：

**Graph 這個 ADT 必須支援哪些操作**

---

### 1️⃣ `Graph Create()`

```text
return an empty graph
```

意思：

* 建立一張空圖
* 裡面沒有 vertex，也沒有 edge

📌 類似：

```cpp
Graph g;
```

---

### 2️⃣ `InsertVertex(graph, v)`

```text
return a graph with v inserted
v has no incident edge
```

意思：

* 把一個新頂點 `v` 加進圖
* 一開始沒有任何邊

📌 白話：

* 先有人，但還沒交朋友

---

### 3️⃣ `InsertEdge(graph, v1, v2)`

```text
return a graph with new edge between v1 and v2
```

意思：

* 在 `v1` 和 `v2` 之間加一條邊
* 因為是 **undirected**，兩邊都算鄰居

📌 注意：

* 這裡假設 v1、v2 已存在

---

### 4️⃣ `DeleteVertex(graph, v)`

```text
v and all edges incident to it are removed
```

這句很重要 ⚠️

意思：

* 刪掉頂點 v
* **跟 v 有關的所有邊也要一起刪**

📌 不能留下「斷掉的邊」

### 常見題型 

* 刪除 vertex 時，邊要不要刪？

✔️ **要，一起刪**


---

### 5️⃣ `DeleteEdge(graph, v1, v2)`

```text
remove the edge (v1, v2)
```

意思：

* 只刪邊
* 頂點還在

---

### 6️⃣ `IsEmpty(graph)`

```text
if graph == empty graph
```

意思：

* 判斷圖是不是空的
* 沒有任何 vertex

---

### 7️⃣ `Adjacent(graph, v)`

```text
return a list of all vertices adjacent to v
```

這一個是 **BFS / DFS 的核心操作** 🔥

意思：

* 回傳所有跟 v 有邊直接相連的點

📌 用 Matrix 或 List 實作都可以：

* Matrix：掃 row
* List：回傳 list

### 常見題型 

* Adjacent(graph, v) 回傳什麼？

✔️ **v 的鄰居**
❌ 不是所有可達點

---

# p.33

## 一、這一頁在教什麼？

* **Graph Traversal = 把樹的 DFS / BFS 擴充到「一般圖 graph」**

## 二、先回顧：Tree 怎麼走？

在「樹」中學過：

* **DFS**

  * Preorder
  * Inorder
  * Postorder

* **BFS**

  * Level-order

👉 因為樹：

* 沒有 cycle
* 每個節點只有一條路可到

所以 traversal 很單純。

## 三、Graph vs Tree

### 🔹 Graph

* 結構很自由
* **可以有 cycle**
* 形狀不固定
* 一個點可能有很多條路回來

### 🔹 Tree

* **Connected + Acyclic(無環)**
* 只有一條唯一路徑
* 是 Graph 的特例

👉 **所有 Tree 都是 Graph，但不是所有 Graph 都是 Tree**

## 四、Graph Traversal 為什麼比較難？

因為 **cycle（環）** ⚠️

📌 例子：

```
0 → 1 → 2
↑       ↓
└───────┘
```

如果你：

* 不記錄走過的點 (visited[v] = true)
* DFS / BFS 會 **無限循環**

## 五、Graph Traversal 跟 Tree Traversal 哪裡一樣？

簡報的 **Similar** 就是在講這個 👇

### ✅ 1. Visited strategy（一定要）

> 每個節點只走一次

```text
visited[v] = true
```

---

### ✅ 2. Recursive DFS

樹的 DFS：

```text
dfs(node):
    for each child:
        dfs(child)
```

圖的 DFS：

```text
dfs(v):
    visited[v] = true
    for each neighbor u of v:
        if not visited[u]:
            dfs(u)
```

👉 幾乎一模一樣，只多了 `visited`

---

### ✅ 3. Queue-based BFS

樹的 BFS（level-order）：

```text
queue.push(root)
```

圖的 BFS：

```text
queue.push(start)
visited[start] = true
```

👉 一樣用 queue，只是要防止重複

---

### ✅ 4. Systematic exploration

意思是：

* 有規則
* 不亂走
* 保證每個節點都會被考慮

---

## 六、Tree Traversal ≈ Graph Traversal（對照表）

| Tree Traversal | Graph Traversal |
| -------------- | --------------- |
| Preorder       | DFS             |
| Level-order    | BFS             |

📌 重點：

* Tree 的 traversal 是 Graph traversal 的特例
* 只是樹不用擔心 cycle

## 七、考試常考觀念 ⚠️

### ❌ 錯誤觀念

* Graph traversal 跟 tree traversal 完全不同

### ✅ 正確觀念

* Graph traversal 是 tree traversal + visited 機制

## 八、考試標準答案（可背）

**Graph traversal extends tree traversal. Because graphs can contain cycles, a visited mechanism is necessary to prevent infinite loops. DFS corresponds to preorder traversal, and BFS corresponds to level-order traversal in trees.**

**圖遍歷是對樹遍歷的擴展。由於圖可能包含環，因此需要存取機制來防止無限循環。深度優先搜尋（DFS）對應於樹中的前序遍歷，而廣度優先搜尋（BFS）對應於樹中的層序遍歷。**

## 九、一句話記憶 

* **Tree = 沒有 cycle 的 graph**
* **Graph traversal = Tree traversal + visited**
* **Graph一定要visit，因：**
   * Graph可以有 cycle
   * 一個點可能連到很多點
   * 可能有多條路回到同一點

---

# 補充：A recursive depth-first approach (DFS) and A queue-based breadth-first approach (BFS)

## 一、超白話版本（先不要管程式）

### 1️⃣ Recursive DFS 在幹嘛？

* **DFS 就是：一條路一直走到底，再回頭**

想像你在迷宮裡：

* 能往前就一直走
* 走到死路 → 回頭
* 換另一條路

👉 這個「回頭」就是 **recursive（遞迴）**

---

### 2️⃣ Queue-based BFS 在幹嘛？

* **BFS 就是：離起點近的先看**

想像丟石頭在水裡：

* 第一圈
* 第二圈
* 第三圈

👉 用「排隊（queue）」來保證順序

---

## 二、用超小圖來示範（一步一步）

假設圖是：

```
    0
   / \
  1   2
   \   \
    3   4
```

---

## 三、Recursive DFS（一步一步）

### 規則

1. 到一個點 → 立刻標記已走
2. 找第一個鄰居
3. 對鄰居「再做一次 DFS」

### 實際走法（從 0 開始）

```
DFS(0)
 └─ DFS(1)
     └─ DFS(3)
         └─ 回頭
     └─ 回頭
 └─ DFS(2)
     └─ DFS(4)
```

### 訪問順序：

```
0 → 1 → 3 → 2 → 4
```

📌 關鍵感覺：

* **一直往下鑽**
* 走不下去才回來

### 為什麼叫 Recursive？

因為：

```text
DFS 裡面又呼叫 DFS 自己
```

---

## 四、Queue-based BFS（一步一步）

### 規則

1. 先進去的先出來（排隊）
2. 每次處理「一層」

### 實際過程（從 0 開始）

#### 初始

```
Queue: [0]
Visited: 0
```

#### 處理 0

```
訪問 0
Queue 加入 1, 2
Queue: [1, 2]
```

#### 處理 1

```
訪問 1
Queue 加入 3
Queue: [2, 3]
```

#### 處理 2

```
訪問 2
Queue 加入 4
Queue: [3, 4]
```

#### 處理 3、4

```
依序訪問
```

### 訪問順序：

```
0 → 1 → 2 → 3 → 4
```

📌 關鍵感覺：

* **先看近的**
* 一層一層往外

---

## 五、用 Tree 來對照（超重要）

| Tree        | Graph       |
| ----------- | ----------- |
| Preorder    | DFS         |
| Level-order | BFS         |
| 不用 visited  | 一定要 visited |

---

## 六、超簡版偽碼（只看重點）

### DFS（Recursive）

```text
DFS(v):
    visited[v] = true
    for each neighbor u of v:
        if not visited[u]:
            DFS(u)
```

### BFS（Queue）

```text
queue.push(start)
visited[start] = true

while queue not empty:
    v = queue.pop()
    for each neighbor u of v:
        if not visited[u]:
            visited[u] = true
            queue.push(u)
```

---

## 七、要記住的只有三件事 

1️⃣ DFS：一直走到底 → 回頭（遞迴）
2️⃣ BFS：近的先看 → 用 queue
3️⃣ Graph 一定要 visited（防 cycle）

---

# p.36 one possible output, any node can be the starting node

## 原圖：

```
      A
     / \
    B   C
   / \
  D   E
```

Graph 版 DFS 規則（Preorder）：

1. 進到節點 → 立刻訪問（記錄）
2. 遍歷 **還沒訪問的鄰居**（順序固定，例如 alphabetically）
3. 一直往下走到底
4. 回頭繼續其他鄰居
5. 若一個節點有兩個鄰居，可照數字大小或照字母順序遍歷

假設鄰居排列順序：

* A → B, C
* B → A, D, E
* C → A
* D → B
* E → B

---

### 🔹 起點 B

DFS 過程（Preorder，visited 防重複）：

1. B → 訪問 → **visited = {B}**
2. 鄰居：A（未訪問） → 進 A → 訪問 → **visited = {B,A}**
3. A 鄰居：B（已訪問）、C（未訪問） → 進 C → 訪問 → **visited = {B,A,C}**
4. C 鄰居：A（已訪問） → 回 B
5. B 鄰居：D（未訪問） → 進 D → 訪問 → **visited = {B,A,C,D}**
6. B 鄰居：E（未訪問） → 進 E → 訪問 → **visited = {B,A,C,D,E}**

✅ DFS Preorder 結果：

```
B A C D E
```

---

### 🔹 起點 C

1. C → 訪問 → **visited = {C}**
2. 鄰居：A → 訪問 → **visited = {C,A}**
3. A 鄰居：B → 訪問 → **visited = {C,A,B}**
4. B 鄰居：D → 訪問 → **visited = {C,A,B,D}**
5. B 鄰居：E → 訪問 → **visited = {C,A,B,D,E}**

✅ DFS Preorder 結果：

```
C A B D E
```

---

### 🔹 起點 D

1. D → 訪問 → **visited = {D}**
2. 鄰居：B → 訪問 → **visited = {D,B}**
3. B 鄰居：A → 訪問 → **visited = {D,B,A}**
4. A 鄰居：C → 訪問 → **visited = {D,B,A,C}**
5. B 鄰居：E → 訪問 → **visited = {D,B,A,C,E}**

✅ DFS Preorder 結果：

```
D B A C E
```

---

### 🔹 起點 E

1. E → 訪問 → **visited = {E}**
2. 鄰居：B → 訪問 → **visited = {E,B}**
3. B 鄰居：A → 訪問 → **visited = {E,B,A}**
4. A 鄰居：C → 訪問 → **visited = {E,B,A,C}**
5. B 鄰居：D → 訪問 → **visited = {E,B,A,C,D}**

✅ DFS Preorder 結果：

```
E B A C D
```

---

# p.37

### 1️⃣ BFS 是什麼？

BFS 就是 **廣度優先搜尋**，意思是：

* 先走離起點最近的節點（第一層）
* 再走下一層節點（第二層）
* 然後第三層，依此類推

可以把它想成 **層層擴散**，像水波一圈一圈擴開。

* ⚡ 在樹中，這就叫做 **Level-order traversal**。

### 2️⃣ BFS 的基本步驟

假設你有一個圖 `G`，起點是 `start`：

1. **建立隊列**（Queue）：存放下一步要訪問的節點。
2. **建立訪問集合**（Visited Set）：記錄已經走過的節點，避免重複走。
3. **把起點加入隊列**。

接著重複以下步驟，直到隊列空了：

```
從隊列取出一個節點 v
如果 v 沒有被訪問過：
    標記 v 為已訪問
    印出 v（或做其他操作）
    把所有 v 的鄰居中還沒被訪問過的節點加入隊列
```

### 3️⃣ 為什麼樹不用 visited，但圖需要？

* **樹**：沒有循環（cycle），每個節點只有一個父節點 → 往下走不會走回頭路 → 不會重複。
* **圖**：可能有循環（cycle），像 A → B → C → A，如果不檢查 visited，就會無限循環。

* 舉例：

```
A - B
|   |
D - C
```

從 A 開始 BFS：

* 如果沒 `visited`，隊列會不停地把 A → B → C → D → A → B → … 重複加入。
* 加了 `visited`，每個節點只走一次。

### 4️⃣ BFS 的小範例

假設圖如下：

```
A - B - C
|   |
D - E
```

BFS 從 A 開始：

1. 隊列 = [A]
2. 取出 A → 訪問 → 印出 A
3. 加入 A 的鄰居 B, D → 隊列 = [B, D]
4. 取出 B → 訪問 → 印出 B
5. B 的鄰居 A, C, E → A 已訪問 → 加 C, E → 隊列 = [D, C, E]
6. 取出 D → 訪問 → 印出 D
7. D 的鄰居 A, E → A 已訪問，E 尚未訪問（已在隊列中） → 隊列 = [C, E]
8. 取出 C → 訪問 → 印出 C
9. C 的鄰居 B → 已訪問 → 不加
10. 取出 E → 訪問 → 印出 E
11. E 的鄰居 B, D → 都已訪問 → 不加
12. 隊列空了 → 結束

**結果順序：** `A, B, D, C, E`


✅ 小結：

* BFS 就是 **用隊列一層一層走**
* 樹不用 visited，圖必須加 visited 避免無限循環
* 每個節點只會訪問一次

---
