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

