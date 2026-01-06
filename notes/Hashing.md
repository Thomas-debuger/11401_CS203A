# P.19 Key-Value Pair

## 1. 先看這個式子在寫什麼

```
<Value1, Value2>  →  Pair<Key, Value2>
```

意思是：

* 原本有一對資料 (Value1, Value2) 經過處理後，變成 (Key, Value2)

## 2. Value2 是什麼？

投影片說：

* Value2 represents the important information

Value2 = 我們真正想存、想查的資料

例子：

* 學生成績
* 商品資訊
* 使用者資料

## 3. Value1 是什麼？

投影片說：

* Value1 provides the source to derive or compute the key

Value1 不是直接拿來存
它是「用來產生 key 的原料」

```
Key = f(Value1)
```

## 4. 用超實際的例子來看

### 學生資料例子

原始資料：

```
<Value1, Value2>
<StudentID, StudentRecord>
```

轉成 Dictionary 形式：

```
Key = StudentID
Value = StudentRecord
```

最後存成：

```
Pair<Key, Value2>
<StudentID, StudentRecord>
```

StudentID 本身就是 key
StudentRecord 才是你要查的資料

### Email 系統例子

原始資料：

```
<Value1, Value2>
<EmailAddress, UserProfile>
```

Key 來自：

```
Key = hash(EmailAddress)
```

Dictionary 裡存：

```
<hash(EmailAddress), UserProfile>
```

Value1（Email）用來算 key
Value2（UserProfile）是重要資料

## 5. 為什麼要這樣分？

因為在 Dictionary / Hash Table 裡：

* 查找是靠 key
* 資料是存在 value

所以設計時會：

1. 用 Value1 產生 key（方便、快速）
2. 用 key 找到 Value2（真正的資料）

## 6. 一句話考試版總結

* Dictionary 中存的是 (Key, Value)
* Value2 是實際要存取的資料
* Value1 用來產生或計算 key

或更短一點：

* Key 來自 Value1，資料存在 Value2

---

# P.20 Hashing

## 1. 什麼是 Hashing？

* Hashing 是用一個數學函數，把 key 直接算成陣列位置，讓你不用一個一個找資料。

## 2. Hash Table 在做什麼？

原本（沒有 hashing）：

```
找資料 → 從頭看到尾 → O(n)
```

用 Hash Table：

```
key → 算位置 → 直接拿 → 平均 O(1)
```

目標：

* Quickly find data by a key, without searching through all elements

## 3. Key–Value Mapping

```
Key → Hash Function → Index → Value
```

拆開看：

1. Key：用來找資料的東西（學號、帳號、ID）
2. Hash Function：一個數學規則，把 key 變成數字
3. Index：陣列的位置（bucket 編號）
4. Value：真正存的資料

## 4. Hash Function 是什麼？

* Hash Function = 把 key 轉成陣列 index 的公式

例如：

```
h(k) = k mod 10
```

key = 37
→ 37 mod 10 = 7
→ 存在 table[7]

好的 hash function：

* 快
* 分布平均
* 不容易撞在同一格

## 5. 為什麼是「average O(1)」？

因為：

* 不用搜尋
* 直接算 index
* 直接存 / 拿

前提：

* hash function 設計得好
* collision 不嚴重

老師一定會寫：

* Average O(1), Worst-case O(n)

## 6. 什麼是 Collision（碰撞）？

不同 key 算出同一個 index

例子：

```
h(12) = 2
h(22) = 2
```

兩個 key 都想放 table[2]

## 7. 解決 Collision 的方法

### 1. Chaining（拉鍊法）

每個 bucket 存一個 linked list：

```
table[2] → (12,A) → (22,B)
```

* 插入：丟進 list
* 搜尋：在 list 裡找

平均 O(1)，最差 O(n)

### 2. Open Addressing（開放定址）

撞到就找下一個空位：

* Linear probing
* Quadratic probing
* Double hashing

例子（Linear）：

```
2 → 被占
3 → 被占
4 → 空 → 放這
```

## 8. 表格總整理

| 概念              | 說明                     |
| --------------- | ---------------------- |
| Hashing         | 用 hash function 快速存取資料 |
| Hash Table      | 存 key-value 的陣列        |
| Hash Function   | key → index            |
| Bucket          | 陣列的一格                  |
| Collision       | 兩個 key 同一 index        |
| Chaining        | 一格放一串                  |
| Open Addressing | 往別格找                   |

## 9. 一句話考試萬用答案

* Hashing uses a hash function to map keys to array indices, enabling fast insertion, deletion, and lookup with average O(1) time.

---

# 補充

## 1. 各自在做什麼？（白話版）

### Hashing（雜湊）

* 整個快速找資料的概念與流程
* 用 key → 經過 hash function → 找到位置 → 存 / 取資料
  Hashing = Strategy（策略）

### Hash Table（雜湊表）

* 實際存資料的地方
* 一個陣列（array of buckets）
* 每一格可以放一個或多個 key–value
  Hash Table = Container（容器）

### Hash Function（雜湊函數）

* 把 key 轉成 index 的公式
  例如：

```
h(k) = k mod 10
```

Hash Function = Tool（工具）

---

## 2. 用流程圖一次看懂

```
Key
 ↓
Hash Function
 ↓
Index
 ↓
Hash Table
 ↓
Value
```

整個流程合起來叫 Hashing

---

## 3. 表格對照

| 名稱            | 類型      | 在幹嘛         | 一句話記憶  |
| ------------- | ------- | ----------- | ------ |
| Hashing       | 技術 / 概念 | 快速找資料的方法    | 整個流程   |
| Hash Table    | 資料結構    | 存 key–value | 放資料的地方 |
| Hash Function | 函數      | key → index | 算位置    |

---

# P.21 Table Size

## 為什麼 prefer prime numbers？

### 問題：pattern（規律）會造成 collision

如果 m 不是質數，key 很容易「對齊同樣的餘數」。

m = 1000（不是質數）：

```
h(k) = k mod 1000
```

如果 key 有規律：

```
1000, 2000, 3000, 4000
```

結果：

```
1000 mod 1000 = 0
2000 mod 1000 = 0
3000 mod 1000 = 0
```

全部撞在同一格

m = 1009（質數）：

```
1000 mod 1009 = 1000
2000 mod 1009 = 991
3000 mod 1009 = 982
```

分布比較平均
避免 repeating patterns

---

# p.24 Collision Handling

## 1. Chaining（拉鍊法）

概念：
如果兩個 key 的 hash index 一樣，就把它們放在同一個桶子（bucket）裡的 list。

示意圖：

```
index 0:  NULL
index 1:  [ (17) → (29) → (45) ]
index 2:  [ (8) ]
index 3:  NULL
```

優點：

* 實作簡單
* 負載過高時，只會讓 list 變長

缺點：

* 需要額外 pointer（list 結構）

## 2. Open Addressing（開放定址）

概念：
碰撞時，不把多餘的資料塞在同一桶子，而是往其他空位找（probe）。

三種常見探測方式：

1. Linear Probing（線性探測）
   往後一格、一格、一格找

2. Quadratic Probing（二次探測）
   用平方增加距離避免群聚

3. Double Hashing（雙雜湊）
   用第二個 hash function 決定步長

## 3. Composite Key（複合鍵）

概念：
不只用單一值做 key，而是把多個屬性組合起來做 hash，以降低碰撞。

例子：

```
key = hash(name + studentID)
```

增加唯一性 → 減少碰撞

## 4. Hash Refinement（改善雜湊函式）

概念：
如果 hash function 太差，容易碰撞
改良方式：

1. Mod 大質數
2. Better bit-mixing（如 MurmurHash、xxHash、FNV-1a）
3. Reduce patterns（避免規律 key 集中）

表格總結：

| 方法              | 概念                  | 優點    | 缺點       |
| --------------- | ------------------- | ----- | -------- |
| Chaining        | 同 index 做 list      | 簡單、穩定 | 需要 list  |
| Open Addressing | 找下一個空 slot          | 不需要指標 | 高負載時慢    |
| Composite Key   | 多屬性增加 key 唯一性       | 減少碰撞  | key 計算較重 |
| Hash Refinement | 改用更好的 hash function | 分布更平均 | 設計要花時間   |

---

好，我幫你把 **P.26 ~ P.44** 的 Hash Table / Hashing 筆記整理成 **純文字、完整、清理版**，去掉多餘廢話，保留公式、定義、重點、例子、表格資訊。

---

# Hash Table & Hashing 筆記（P.26 ~ P.44）

---

## **P.26 Key Concept**

### 1. The data or identifier to be stored

* 指要存進 hash table 的資料，或用來識別資料的 key
* 例子：

  * 學生資料：Key = student ID，Value = student name, GPA
  * 帳號系統：Key = username，Value = user profile
  * 字典：Key = "apple"，Value = "蘋果"

**一句話總結**：Key = 用來查找資料的識別值

---

### 2. Load Factor

```
α = n / m
```

* n = 資料筆數
* m = table size
* α ↑ → collision ↑、cluster ↑、搜尋時間變長

---

## **P.27 Hash Function**

### 1. Division Method

```
h(k) = k mod m
```

* 優點：簡單、快速
* 缺點：若 m 選不好（非質數、與 key 規律相關）容易 clustering

### 2. Multiplication Method

```
h(k) = floor(m * (k * A mod 1))
0 < A < 1, 常用 A ≈ 0.618 (黃金比例)
```

* 利用 k*A 的小數部分，分布均勻
* 不必太在意 m 是質數

### 3. Folding Method

* 把 key 分段 → 各段相加 → mod m
* 適用於長數字（ID、電話號碼等）

### 4. String Hashing（Polynomial Rolling Hash）

```
h(s) = ( Σ s[i] * p^i ) mod m
```

* s[i] = 字元 ASCII/Unicode
* p = base（常用 31, 131, 257）
* m = 大質數
* 用途：字典、Compiler Symbol Table、Rabin-Karp 滾動雜湊

---

## **P.29 Static vs Dynamic Hashing**

| 特性                | Static Hashing | Dynamic Hashing   |
| ----------------- | -------------- | ----------------- |
| Table Size        | Fixed          | Variable          |
| Hash Function     | Constant       | Adaptive          |
| Memory Usage      | Predictable    | May expand        |
| Performance (α ↑) | Degrades       | Remains efficient |
| Rehashing         | Entire table   | Local splits      |
| Implementation    | Simple         | Complex           |
| Best Use Case     | Small, fixed   | Large, growing    |

**重點**：

* Static: 資料量固定 → 滿了要整表 rehash
* Dynamic: 資料量變動 → 只 split 滿的 bucket

---

### Dynamic Hashing - Bucket Split

* 只拆滿的 bucket，不影響其他 bucket
* 使用多一個 bit 決定 index
* Example:

  ```
  bucket 5: [k1, k2, k3, k4] → split → bucket 5: [k1, k3], bucket 13: [k2, k4]
  ```
* **考試句**：

> When a bucket overflows in dynamic hashing, one additional bit of the hash value is used to split the bucket, redistributing its records into two new buckets.

---

## **P.38 Probing（Open Addressing Collision Handling）**

* 定義：碰撞時，依規則在 hash table 中找下一個空位
* Formula:

```
Probing = 系統性搜尋 hash table 中的空槽
```

### 常見方法：

1. Linear Probing: `(h(k) + i) mod m`

   * 優點：簡單
   * 缺點：Primary Clustering
2. Quadratic Probing: `(h(k) + c1*i + c2*i^2) mod m`

   * 優點：減少群聚
   * 缺點：可能跳過 slot，需 λ < 0.5
3. Double Hashing: `(h1(k) + i*h2(k)) mod m`

   * 優點：分布均勻、群聚最少
   * 缺點：需設計第二個 hash function

---

## **P.40-41 Linear Probing Example**

* Hash function: `h(k) = k mod m`
* Table size: m = 10
* Insert keys: 23, 33, 43

| Key | Index | Collision Handling                             |
| --- | ----- | ---------------------------------------------- |
| 23  | 3     | slot[3] 空 → 放入                                 |
| 33  | 3     | collision → slot[4] 空 → 放入                     |
| 43  | 3     | collision → slot[4] collision → slot[5] 空 → 放入 |

**Observation**: 形成連續 cluster → Primary Clustering

---

## **P.42 Primary Clustering**

* 定義：連續已佔用 slots → 後續新 key 探測序列變長
* 解決方法：

  * Quadratic Probing → gaps grow quadratically
  * Double Hashing → 用第二 hash function
  * Chaining → 用鏈結串列

---

## **P.43-44 Quadratic Probing Example**

* Table size: m = 10
* Hash function: `h(k) = k mod 10`
* c1 = 1, c2 = 1
* Insert keys: 23, 33, 43

| Key | i=0 | i=1         | i=2      |
| --- | --- | ----------- | -------- |
| 23  | 3   | -           | -        |
| 33  | 3   | 5 空 → 放入    | -        |
| 43  | 3   | 5 collision | 9 空 → 放入 |

**Observation**:

* 探測間距平方增長 → 減少 Primary Clustering
* 可能跳過某些 slot → table size 或 c1/c2 選得要合適
