# p.25 Collision Handling     

---

# **1. Chaining（拉鍊法）**

**概念：**
如果兩個 key 的 hash index 一樣，就把它們**放在同一個桶子（bucket）裡的 list**。

### **示意圖**

```
index 0:  NULL
index 1:  [ (17) → (29) → (45) ]   ← 都被 hash 到 1
index 2:  [ (8) ]
index 3:  NULL
```

### **優點**

* 實作簡單
* 負載過高時，只會讓 list 變長，不會像 open addressing 那樣爆掉

### **缺點**

* 需要額外 pointer（list 結構）

---

# **2. Open Addressing（開放定址）**

**概念：**
碰撞時，不把多餘的資料塞在同一桶子，而是**往其他空位找（probe）**。

## **三種常見探測方式**

### **(1) Linear Probing（線性探測）**

往後一格、一格、一格找：

若原本 index = `h(k)`，則探測順序為

```
h(k), h(k)+1, h(k)+2, ...
```

（記得對 table 大小取 modulo）

**缺點：會產生 clustering（群聚）**

---

### **(2) Quadratic Probing（二次探測）**

用平方增加距離避免群聚：

```
h(k), h(k)+1², h(k)+2², h(k)+3², ...
```

降低群聚，但不保證一定找得到空位（較依賴 table 設計）。

---

### **(3) Double Hashing（雙雜湊）**

當碰撞發生，用第二個 hash function 決定步長：

```
h(k), h(k) + h2(k), h(k) + 2*h2(k), h(k) + 3*h2(k), ...
```

**優點：最佳的 Open Addressing method，不太會群聚。**

---

# **3. Composite Key（複合鍵）**

**概念：**
不只用單一值做 key，而是「把多個屬性組合起來」做 hash，以降低碰撞。

### **例子**

假設你要存學生資料：

如果只用 **name** 當 key，兩個人叫 "Kevin" 就 collision。
所以你可以改用：

```
key = hash(name + studentID)
```

或

```
key = hash(name, birth_year)
```

或

```
key = hash(value1 + timestamp)
```

增加唯一性 → 減少碰撞。

### **常見場景**

* Database primary key (複合主鍵)
* 資料庫 join
* Map / Dictionary 儲存多屬性物件

---

# **4. Hash Refinement（改善雜湊函式）**

**概念：**
如果 hash function 太差 → 很多資料會集中在某些 index → 容易碰撞。
所以要改良 hash function 來：

* 分散 key
* 混合 bit（bit-mixing）
* 對 **大質數（prime）mod** 取餘數

---

### **常見改善方式**

### **(1) Mod 大質數 (mod a large prime)**

例如 table 大小用：

**101、1009、10007、131071…**
比 mod 100、mod 1000 分布好太多。

---

### **(2) Better bit-mixing**

像 MurmurHash、xxHash、FNV-1a 都是高品質的 hash function。
（尤其 C 課程中常用 FNV 或 DJB2）

---

### **(3) Reduce patterns**

如果 key 有規律（像 1000、2000、3000），
差的 hash 會全部落到同 index。
好一點的 hash 會把它們打散。

---

# **總結圖（強化理解）**

| 方法                  | 概念                  | 優點    | 缺點       |
| ------------------- | ------------------- | ----- | -------- |
| **Chaining**        | 同 index 做 list      | 簡單、穩定 | 需要 list  |
| **Open Addressing** | 找下一個空 slot          | 不需要指標 | 高負載時很慢   |
| **Composite Key**   | 用多屬性來增加 key 唯一性     | 減少碰撞  | key 計算較重 |
| **Hash Refinement** | 改用更好的 hash function | 分布更平均 | 設計要花時間   |

---

# p.28 ADT: HashTable with Separate Chaining   

---

# ✅ **ADT: HashTable with Separate Chaining（拉鍊法雜湊表）**

### **物件（objects）**

HashTable 內部包含：

* 一組 **key-value pair**（鍵唯一）
* 一個大小為 **m** 的 bucket 陣列
  每個 bucket 是 **一條 linked list（chain）**，裡面存多個 `<key, value>`。

### **雜湊方式**

使用雜湊函式：

```
h(key) → [0, m-1]   // 對 key 做 hash，決定它屬於哪個 bucket
```

---

# 🎯 **參數（parameters）**

| 名稱                | 意義                              |
| ----------------- | ------------------------------- |
| `m`               | bucket 數量                       |
| `h`               | hash function（固定、可重複、分布均勻）      |
| `λ = n / m`       | load factor（平均每個 bucket 裡有多少元素） |
| `MAX_LOAD_FACTOR` | 通常設 0.75，超過就擴增                  |

---

# 🧱 **方法（operations / functions）**

---

## ✔ **Create(m)**

**前置條件（precondition）：**

```
m > 0
```

**後置條件（postcondition）：**

```
建立一個 m 個空 bucket 的 hash table
所有 bucket 都是空的 chain
λ = 0
```

---

## ✔ **IsEmpty(h)**

回傳（TRUE / FALSE）：

```
size(h) == 0
```

---

## ✔ **Insert(h, k, v)**

```
i = h(k) mod m    // 找 bucket index
```

1. 若 bucket[i] 裡已存在 key k：
   → **更新 value 為 v（取代舊值）**

2. 否則：
   → **把 <k, v> 插入到 bucket[i] 的鏈結串列「開頭」**
   → size++

3. 若 λ > MAX_LOAD_FACTOR：
   → 執行 `Resize(h, 2*m)`（重新分配所有 key）

---

## ✔ **Retrieve(h, k)**

```
i = h(k) mod m
到 bucket[i] 裡找 key k
```

* 若找到：回傳對應 value
* 若找不到：丟出 `KeyNotFoundException`

---

## ✔ **Delete(h, k)**

```
i = h(k) mod m
```

* 若 bucket[i] 裡有 k：
  → 刪除 `<k, v>`
  → size--
  → 回傳 TRUE
* 若沒有：
  → 回傳 FALSE

---

## ✔ **Search(h, k)**

```
i = h(k) mod m
回傳 (bucket[i] 是否含 key k)
```

---

## ✔ **Traverse(h)**

回傳一個 iterator，順序為：

1. bucket[0]
2. bucket[1]
3. ...
4. bucket[m-1]

在每個 bucket 裡，依 **插入順序** 走訪所有 pair。

---

# 🎉 **完整 ADT（漂亮格式）**

```
ADT HashTable is
objects:
    A finite set of <key, value> pairs with unique keys.
    Keys are distributed into m buckets by hash function:
        h(key) → [0, m-1].
    Each bucket contains a chain (linked list) of pairs.

parameters:
    m: number of buckets (m > 0)
    h: deterministic hash function
    λ: load factor = n / m
    MAX_LOAD_FACTOR = 0.75

operations:

HashTable Create(m)
    pre:  m > 0
    post: return empty table with m buckets and λ = 0

Boolean IsEmpty(h)
    return (size(h) == 0)

Insert(h, k, v)
    i = h(k) mod m
    if k exists in bucket[i]:
        replace existing value with v
    else:
        insert <k, v> at front of bucket[i]
        size++
    if λ > MAX_LOAD_FACTOR:
        Resize(h, 2*m)

value Retrieve(h, k)
    i = h(k) mod m
    search bucket[i] for k
    if found: return associated value
    else: throw KeyNotFoundException

Boolean Delete(h, k)
    i = h(k) mod m
    if k exists in bucket[i]:
        remove <k, v>
        size--
        return TRUE
    else:
        return FALSE

Boolean Search(h, k)
    i = h(k) mod m
    return (k exists in bucket[i])

Iterator Traverse(h)
    return iterator visiting buckets from 0 to m-1,
    and within each bucket in insertion order

end HashTable
```

---

# p.29 Hash Function    

---

# ✅ **1. Division Method（除法取餘法）**

## ✔ **公式**

```
h(k) = k mod m
```

## ✔ **原理**

用除法把 key 除以 m，取餘數。

## ✔ **例子**

```
key = 123
m = 10
h(123) = 123 mod 10 = 3
```

## ✔ **優點**

* 最簡單
* 計算最快

## ✔ **缺點**

* 如果 m 選得不好（例如 m 是 key 的某種模式的倍數）
  → 很容易造成 clustering

✔ 通常把 **m 選成質數**（prime number）
效果最好。

---

# ✅ **2. Multiplication Method（乘法法）**

## ✔ **公式**

```
h(k) = floor( m * (k*A mod 1) )
```

其中：

* A 是 0 到 1 之間的實數
* 典型的選擇：

  ```
  A ≈ 0.6180339887  (黃金比例小數部分)
  ```

## ✔ **原理**

利用 “k*A 的小數部分” 來打散 key。

因為浮點乘數一般能讓鍵分布更均勻，所以**不需要太在意 m 是不是質數**。

## ✔ **例（簡化示意）**

假設 A = 0.618
k = 123
m = 10

```
123 * 0.618 = 75.999...
小數部分約 = 0.999
m * 0.999 ≈ 9.99
floor → 9
```

→ index = **9**

---

# ✅ **3. Folding Method（摺疊法）**

## ✔ **想法**

把 key 分段 → 逐段相加 → 加總後再做 mod。

常用於 **非常大的 key**，像：

* 身分證字號
* 電話號碼
* 社會安全碼
* 長整数

## ✔ **例子**

key = 123456
切成三段：

```
12   34   56
```

相加：

```
12 + 34 + 56 = 102
```

最後會通常做 mod m（例子沒寫，但實際會用）：

```
index = 102 mod m
```

---

# ✅ **4. String Hashing（字串雜湊）**

**最重要、最常用**
字典、Symbol Table、Compiler 解析符號，全都用它。

## ✔ **公式（Polynomial Rolling Hash）**

```
h(s) = ( Σ s[i] * p^i ) mod m
```

其中：

* `s[i]` 是字元的 ASCII（或 Unicode）碼
* `p` 是 base，常用 31、131、257 …
* `m` 是大質數

## ✔ **例子（示意）**

字串 `"cat"`：

```
c = 99
a = 97
t = 116
p = 31
```

```
h("cat") = 99*31^0 + 97*31^1 + 116*31^2
```

注意最後仍會 mod m。

## ✔ **特點**

* 分布好
* 避免 collision
* 用於：

  * C++ std::string hash
  * Java String hash
  * 滾動雜湊（Rabin–Karp 演算法）

---

# 🎉 **總表整理**

| Method                          | Formula / Idea                                               | Example                         |
| ------------------------------- | ------------------------------------------------------------ | ------------------------------- |
| **Division Method**             | `h(k) = k mod m`                                             | `key = 123, m = 10 → index = 3` |
| **Multiplication Method**       | `h(k) = floor(m * (k*A mod 1))`, `0 < A < 1`, 常用 `A ≈ 0.618` | 乘法法示意 → index ≈ 9               |
| **Folding Method**              | 拆成多段後相加                                                      | `123456 → 12+34+56 = 102`       |
| **String Hashing (Polynomial)** | `h(s) = ( Σ s[i] * p^i ) mod m`                              | 字串 `"cat"` → 99 + 97*31 + ...   |

---

# p.38 What is Probing?    

---

# ✅ **Probing（探測法）**

**定義：**

> Probing 是 **解決碰撞（collision）** 的方法，用於 **Open Addressing（開放定址）Hash Table**。
> 當多個 key 被 hash 到相同 index 時，proving 決定 **如何尋找下一個可用位置**。

---

# 🧩 **公式化說法**

```
Probing = 系統性搜尋 hash table 中的空槽（empty slot），直到找到可以放置的 index
```

* hash index = h(key)
* 如果該位置已被佔用 → 用 probing 找下一個空位

---

# 🔹 **常見 Probing 方法**

1. **Linear Probing（線性探測）**

   ```
   h(k), h(k)+1, h(k)+2, ...
   ```

   優點：簡單
   缺點：容易群聚（clustering）

2. **Quadratic Probing（二次探測）**

   ```
   h(k), h(k)+1², h(k)+2², h(k)+3², ...
   ```

   優點：減少群聚
   缺點：不保證一定找到空位

3. **Double Hashing（雙雜湊）**

   ```
   h(k), h(k) + h2(k), h(k) + 2*h2(k), ...
   ```

   優點：群聚最少
   缺點：需設計第二個 hash function

---

# 🧠 **補充理解**

* **目的**：避免在 open addressing 中因碰撞而無法插入資料
* **特點**：所有資料仍存於單一 table，沒有鏈結串列
* **效率**：取決於 **load factor λ**，λ 越大，proving 次數越多

---

# 🔹 **一句話總結**

> **Probing = 碰撞後，依規則在 hash table 中找下一個空位的系統性搜尋方法。**

---

# p.39 Typing of Probing   

---

# ✅ **Typing of Probing（探測法類型）**

| **Method**            | **Formula**                   | **Behavior（行為）**          | **Pros / Cons（優缺點）**                                         |
| --------------------- | ----------------------------- | ------------------------- | ------------------------------------------------------------ |
| **Linear Probing**    | `(h(k) + i) mod m`            | 每次檢查下一個 slot（依序檢查）        | **Pros:** 簡單實作<br>**Cons:** 容易產生 **Primary Clustering**（群聚）  |
| **Quadratic Probing** | `(h(k) + c₁·i + c₂·i²) mod m` | 每次探測間距呈二次增加               | **Pros:** 減少群聚<br>**Cons:** 可能跳過一些 slot，表容量必須精心選擇            |
| **Double Hashing**    | `(h1(k) + i·h2(k)) mod m`     | 用第二個 hash function 決定探測步長 | **Pros:** 分布均勻，群聚最少<br>**Cons:** 計算量較大，需要設計第二個 hash function |

---

# 🔹 **補充說明**

* `i` = 探測序列索引 (0,1,2,…)
* `h(k), h1(k), h2(k)` = hash function(s)
* `m` = hash table 大小

## ✔ **理解關鍵**

1. Linear → 簡單但群聚
2. Quadratic → 減少群聚，但可能找不到空位（需 λ < 0.5）
3. Double Hashing → 最佳 open addressing 方法，但需要額外計算

---

# 🔹 **一句話記憶技巧**

> Linear → 直走
> Quadratic → 跳得越來越遠
> Double → 用另一把尺量步長

---

# p.42-43 Linear Probing   

---

# **前提**

* Hash function：`h(k) = k mod m`
* Table size：`m = 10` → slots 0~9
* Collision 處理方法：**Linear Probing**

  ```
  index(i) = (h(k) + i) mod m
  i = 0,1,2,...
  ```
* 要插入的 key：23, 33, 43

---

# **Step 1: 插入 23**

1. 計算 hash index：

   ```
   h(23) = 23 mod 10 = 3
   ```
2. 檢查 slot[3] 是否空的：

   * slot[3] 空 → 直接放入 23
     ✅ 插入成功

**Table 狀態：**

```
slot[3] = 23
```

---

# **Step 2: 插入 33**

1. 計算 hash index：

   ```
   h(33) = 33 mod 10 = 3
   ```
2. slot[3] 已經被 23 佔用 → **發生 collision**
3. Linear Probing 開始探測：

   ```
   i = 1 → (3 + 1) mod 10 = 4
   ```
4. 檢查 slot[4]：

   * slot[4] 空 → 插入 33
     ✅ 插入成功

**Table 狀態：**

```
slot[3] = 23
slot[4] = 33
```

---

# **Step 3: 插入 43**

1. 計算 hash index：

   ```
   h(43) = 43 mod 10 = 3
   ```
2. slot[3] 已被佔用 → collision
3. Linear Probing 開始探測：

   ```
   i = 1 → (3 + 1) mod 10 = 4
   ```

   * slot[4] 已被 33 佔用 → collision

   ```
   i = 2 → (3 + 2) mod 10 = 5
   ```

   * slot[5] 空 → 插入 43
     ✅ 插入成功

**Table 狀態：**

```
slot[3] = 23
slot[4] = 33
slot[5] = 43
```

---

# **觀察（Observation）**

1. Linear Probing 依序檢查下一個 slot → **很直覺、簡單**
2. 缺點：**Primary Clustering**

   * 連續的 collision 會讓這段區域的 slots 越來越擁擠
   * 未來插入的 key 可能要跳過好幾個 slot 才能找到空位
   * 搜尋 / 插入效率下降

---

# **一句話理解**

> Linear Probing 做的事情就是：**碰到 collision → 往下一格格檢查 → 直到找到空位為止**。
> 插入的順序會形成「一條連續的 filled slots」區塊，就是 primary clustering 的來源。

---

# p.44 Primary Clustering   

---

# ✅ **Primary Clustering（主群聚）**

**定義：**

> 在 **Open Addressing Hash Table**（尤其是 **Linear Probing**）中，**連續的已佔用槽（slots）形成群聚**，
> 導致後續插入的新 key 需要檢查更長的探測序列，讓群聚變得更大。

---

# 🔹 **特徵**

1. 一旦出現一段連續的已佔用 slots → 它容易 **吸引更多碰撞**
2. 新插入的 key 往往要 **沿著這個 cluster 一格一格找空位**
3. Cluster 越大 → 平均插入 / 搜尋時間越長

---

# 🔹 **示意例子**

假設 hash table m = 10，Linear Probing：

| slot | 0 | 1 | 2 | 3  | 4  | 5  | 6 | 7 | 8 | 9 |
| ---- | - | - | - | -- | -- | -- | - | - | - | - |
| key  |   |   |   | 23 | 33 | 43 |   |   |   |   |

* slots 3~5 形成 **cluster**
* 後續要插入 key → hash index = 3（碰撞）

  * 需要檢查 slot 3 → 4 → 5 → 6 才找到空位
* Cluster 越來越大 → 搜尋成本上升

---

# 🔹 **一句話理解**

> **Primary Clustering = 連續填滿的槽形成“擁擠區”，越大越容易讓新 key 碰撞 → 平均探測長度增加。**

---

# 🔹 **解決方式**

1. **Quadratic Probing** → gaps grow quadratically → 減少群聚
2. **Double Hashing** → 用第二個 hash function → 分布更均勻
3. **Chaining** → 用鏈結串列 → 沒有 cluster 問題

---

# p.45-46 Quadratic Probing   

---

# **前提**

* Table size：`m = 10`（slots 0~9）
* Hash function：`h(k) = k mod 10`
* Collision 解決：**Quadratic Probing**

  ```
  index(i) = (h(k) + c1*i + c2*i^2) mod m
  ```
* 這裡假設：`c1 = 1, c2 = 1`
* 要插入的 keys：23, 33, 43

---

# **Step 1: 插入 23**

1. 計算初始 index：

   ```
   h(23) = 23 mod 10 = 3
   i = 0 → index = (3 + 0 + 0) mod 10 = 3
   ```
2. slot[3] 空 → 插入 23
   ✅ 插入成功

**Table 狀態：**

```
slot[3] = 23
```

---

# **Step 2: 插入 33**

1. 計算初始 index：

   ```
   h(33) = 33 mod 10 = 3
   i = 0 → index = 3 (slot[3] 已被 23 佔用)
   ```
2. Collision → 開始 Quadratic Probing：

| i | Computed Index           | 說明                |
| - | ------------------------ | ----------------- |
| 1 | (3 + 1 + 1^2) mod 10 = 5 | slot[5] 空 → 插入 33 |

✅ 插入成功

**Table 狀態：**

```
slot[3] = 23
slot[5] = 33
```

---

# **Step 3: 插入 43**

1. 計算初始 index：

   ```
   h(43) = 43 mod 10 = 3
   i = 0 → index = 3 (slot[3] 被 23 占用)
   ```
2. Collision → Quadratic Probing：

| i | Computed Index           | 說明                          |
| - | ------------------------ | --------------------------- |
| 1 | (3 + 1 + 1^2) mod 10 = 5 | slot[5] 被 33 占用 → collision |
| 2 | (3 + 2 + 2^2) mod 10 = 9 | slot[9] 空 → 插入 43           |

✅ 插入成功

**Table 狀態：**

```
slot[3] = 23
slot[5] = 33
slot[9] = 43
```

---

# **Observation（觀察）**

1. **Quadratic Probing 的 gap**

   * 探測間距隨 i 的平方增長 → `0, 2, 6, 12…` mod m
   * 不像 Linear Probing 那樣連續 → **減少 Primary Clustering**

2. **可能問題**

   * 會跳過一些 slots（不保證每個 slot 都會被檢查到）
   * 如果 table size 或 c1/c2 選得不合適，可能找不到空位 → 必須小心設計

---

# **一句話理解**

> Quadratic Probing = 每次碰撞跳到距離 **i² + i** 的 slot → 減少連續群聚，但可能跳過一些槽，需要設計合適的 table size。

---

# p.47 Secondary Clustering   

---

# ✅ **Secondary Clustering（二次群聚）**

**定義：**

> 在 **Open Addressing Hash Table** 中，不同的 keys 如果 **hash 到相同的初始 index（h(k))**，
> 即使使用 Quadratic Probing 或其他探測方法，它們會 **沿著相同的探測序列**，
> 形成一種群聚，稱為 **Secondary Clustering**。

---

# 🔹 **公式示意**

* Hash function：`h(k) = k mod 10`
* Quadratic Probing：`index(i) = (h(k) + c1*i + c2*i^2) mod 10`
* c1, c2 常設為 1

---

# 🔹 **差別於 Primary Clustering**

| 特性   | Primary Clustering              | Secondary Clustering                           |
| ---- | ------------------------------- | ---------------------------------------------- |
| 發生原因 | 連續填滿槽形成 cluster（Linear Probing） | 不同 key hash 到同一初始 index → probe sequence 相同    |
| 範圍   | 整個 cluster                      | 只針對同一個初始 index 的 keys                          |
| 避免方法 | Quadratic / Double Hashing      | **Double Hashing**（不同 key 會有不同 probe sequence） |

---

# 🔹 **示意例子**

假設：

* Table size m = 10
* Quadratic Probing：`index(i) = (h(k) + i + i^2) mod 10`
* 插入 keys = 23, 33, 43

1. **23 → h(23)=3 → slot[3] 空 → 放入**
2. **33 → h(33)=3 → collision → Quadratic Probing → slot[5]**
3. **43 → h(43)=3 → collision → Quadratic Probing → slot[9]**

* 注意：所有 key 的初始 index 都是 3 → probe sequence 一樣 → **secondary clustering 發生**

如果你用 **Double Hashing**：

* probe sequence = `(h1(k) + i*h2(k)) mod m`
* 不同 key 的 h2(k) 不同 → probe sequence 不同 → 避免 secondary clustering

---

# 🔹 **一句話理解**

> **Secondary Clustering = 不同 keys 初始 hash 相同 → 探測序列相同 → 形成小型群聚。**

---

