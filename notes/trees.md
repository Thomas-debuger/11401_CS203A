# p.10、p.14 名詞解釋   

* root：最上面的節點
* interval：必有一個以上的children
* leaf：沒有 child
* parent, child
* siblings：同一個 parent 的 children
* edge：節點的連線
* subtree：子樹(有parent跟child)
* level：在哪一層(0~n)
* depth / height：深度、樹的高度
* fan-out / degree：一個節點最多可以有幾個 child
  * Binary Tree（二元樹）
    degree = 2 每個節點最多兩個 child）
  * Trie（字典樹）
    degree = 字母數量（英文可能 26，小寫英文字母就是 26）
  * B-tree、B+ tree（資料庫用）
    degree 可以大到上百 → 這能讓資料庫查詢 super 快
