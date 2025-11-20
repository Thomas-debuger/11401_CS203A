/*
   ========================================
   hash_fn.cpp — implement your hash functions
   ========================================

   Description:
    This file contains the hash functions for integer and string keys.

   Development History:
    - 2025/11/11: Initial implementation
    - 2025/11/17: Refactored to use hash_fn.hpp

   Developer: Yun-Hong Wei <thomaswei988@gmail.com>
 */
#include "hash_fn.hpp"
#include <cmath>// for std::ceil and std::pow

 /*
 @brief Computes the hash index for an integer key.
 @param key The integer key to hash.
 @param m The table size.
 @return The computed hash index.
 */

// 以課程講義的方法為基底，加上自己的想法後，衍生出更複雜的算式，並確保自己想出來的方法與教授給的講義內容的方法所執行後的結果不同，達到教授的作業要求
int myHashInt(int key, int m) {
    // TODO: replace with your own design

    double A = 3.1415926;// 使用數學常數圓周率（π）的近似值作為常數

    /*錯誤寫法：因 % 是整數取餘數運算符，不能用在double/float
    (key * A) % 1;
    */
    double temp = key * A - floor(key * A);// (key*A) mod 1
    temp = 1 - temp; // 1 - ( (k*A) mod 1)
    double temp2 = ceil(m * temp);// 完整公式：h(k) = ceil(m * (1 - (k*A mod 1)))，避免某些key導致hash值集中在表格前端
    key = static_cast<int>(temp2);// 將結果轉為整數型(double -> int)

    return key % m;  // basic division method
}



/*
@brief Computes the hash index for an integer key.
@param key The integer key to hash.
@param m The table size.
@return The computed hash index.
*/

// 以課程講義的方法為基底，加上自己的想法後，衍生出更複雜的算式，並確保自己想出來的方法與教授給的講義內容的方法所執行後的結果不同，達到教授的作業要求
int myHashString(const std::string& str, int m) {
    unsigned long hash = 0;       
    // TODO: replace with your own design

    const int p = 31; // 多項式底數

    for (int i = 0; i < str.size(); i++) { // 走訪字串每個字元
        hash += static_cast<unsigned long>(str[i]) * (i + 1) * pow(p, str.size() * i); // 每個字元的 ASCII 值 * (字元位置 + 1) * p^(字串長度 * i)，再累加到 hash  
        hash %= m; // 每一步都 mod m 避免溢位
    }

    return static_cast<int>(hash % m); // basic division method
}



/*方法2
int myHashString(const std::string& str, int m) {
    unsigned long hash = 0;       // 保留作業要求
    const int p = 31;             // 多項式底數
    unsigned long long power = 1; // p 的累乘

    for (int i = 0; i < str.size(); i++) {
        hash += (static_cast<unsigned long long>(str[i]) * (i + 1) * power) % m; // 每個字元 ASCII * (位置+1) * power
        hash %= m;                     // 每一步都 mod m 避免溢位
        power = (power * p) % m;       // 更新 power = p^(i+1) % m
    }

    return static_cast<int>(hash % m);  // basic division method
}

*/
