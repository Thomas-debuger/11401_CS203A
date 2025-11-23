/*
   ========================================
   hash_fn.c — implement your hash functions
   ========================================

   Description:
    This file contains the hash functions for integer and string keys.

   Development History:
    - 2025/11/11: Initial implementation
    - 2025/11/17: Refactored to use hash_fn.h

   Developer: Yun-Hong Wei <thomaswei988@gmail.com>
 */

#include "hash_fn.h"
#include <math.h>   // for ceil(), floor(), pow()
#include <string.h> // for strlen()

/*
@brief Computes the hash index for an integer key.
@param key The integer key to hash.
@param m The table size.
@return The computed hash index.
*/

//「這個函式把輸入的 key 經過我設計的一套以小數部分運算為核心的轉換公式，重新打散後映射成 0 到 m-1 的雜湊值，讓結果更平均。」
int myHashInt(int key, int m) {
    // TODO: replace with your own design

    double A = 3.1415926; // 使用 π 的近似值作為常數

    /* 錯誤示範：(key*A)%1 不能用 %，因為 % 是整數餘數 */
    /* (key * A) % 1; */

    double temp = key * A - floor(key * A); // (key*A) mod 1
    temp = 1 - temp; // 1 - ( (k*A) mod 1)
    double temp2 = ceil(m * temp); // 完整公式：h(k) = ceil(m * (1 - (k*A mod 1)))，避免某些key導致hash值集中在表格前端
    key = (int)temp2; // 將結果轉為整數型(double -> int)

    return key % m;  // basic division method
}

/*
@brief Computes the hash index for a string key.
@param str The string key to hash.
@param m The table size.
@return The computed hash index.
*/

//「這個函式將字串的每個字元根據其 ASCII 值、位置和一個多項式權重進行加權累加，然後映射成 0 到 m-1 的雜湊值，確保不同字串能均勻分布在雜湊表中。」
int myHashString(const char* str, int m) {
    unsigned long hash = 0;       
    // TODO: replace with your own design

    const int p = 31; // 多項式的底數

    int len = strlen(str); // 計算字串長度，用來控制迴圈與次方

    for (int i = 0; i < len; i++) { // 走訪字串每個字元
        hash += (unsigned long)str[i] * (i + 1) * pow(p, len * i);// 每個字元的 ASCII 值 × (字元位置+1) × p^(len * i)，使每個字元貢獻與位置大幅不同
        hash %= m; // 每一步都對 m 取餘數，避免 overflow（也讓 hash 更分散）
    }

    return (int)(hash % m); // basic division method
}



/* 方法2（不使用 pow，比較安全）
int myHashString(const char* str, int m) {
    unsigned long hash = 0;       // 保留作業要求
    const int p = 31;
    unsigned long long power = 1;

    int len = strlen(str);

    for (int i = 0; i < len; i++) {
        hash += ((unsigned long long)str[i] * (i + 1) * power) % m;
        hash %= m;
        power = (power * p) % m;
    }

    return (int)(hash % m);
}
*/