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


# p.29
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

# 🎉 **總表整理（可直接貼進作業/報告）**

| Method                          | Formula / Idea                                               | Example                         |
| ------------------------------- | ------------------------------------------------------------ | ------------------------------- |
| **Division Method**             | `h(k) = k mod m`                                             | `key = 123, m = 10 → index = 3` |
| **Multiplication Method**       | `h(k) = floor(m * (k*A mod 1))`, `0 < A < 1`, 常用 `A ≈ 0.618` | 乘法法示意 → index ≈ 9               |
| **Folding Method**              | 拆成多段後相加                                                      | `123456 → 12+34+56 = 102`       |
| **String Hashing (Polynomial)** | `h(s) = ( Σ s[i] * p^i ) mod m`                              | 字串 `"cat"` → 99 + 97*31 + ...   |

---

