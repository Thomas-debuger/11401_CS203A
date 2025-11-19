/*
   ========================================
   hash_fn.c — implement your hash functions
   ========================================

   Description:
    This file contains the hash functions for integer and string keys.

   Development History:
    - 2025/11/11: Initial implementation
    - 2025/11/17: Refactored to use hash_fn.h

   Developer: Yu-Feng Huang <yfhuang@saturn.yzu.edu.tw>
 */

#include "hash_fn.h"
#include <math.h>   // for floor() and pow()
#include <string.h> // for strlen()

/*
@brief Computes the hash index for an integer key.
@param key The integer key to hash.
@param m The table size.
@return The computed hash index.
*/

// Multiplication Method：h(k) = floor(m * (k*A mod 1)), 0 < A < 1 
int myHashInt(int key, int m) {
    // TODO: replace with your own design

    double A = 0.6180339887; // 常用常數 (0 < A < 1)，接近黃金比例
    double temp = key * A - floor(key * A);// 計算 key*A 的小數部分 (key*A mod 1)
    double temp2 = floor(m * temp);// 將小數部分乘上表格大小 m，並取整數
    key = (int)temp2;// 將結果轉為整數

    return key % m;  // division method example
}

/*
@brief Computes the hash index for a string key.
@param str The string key to hash.
@param m The table size.
@return The computed hash index.
*/

// String Hashing：Polynomial rolling hash
int myHashString(const char* str, int m) {
    unsigned long hash = 0;
    // TODO: replace with your own design

    int temp = 0, p = 31;// temp用來存字元ASCII值，p是多項式哈希的底數

    int len = strlen(str);// 取得字串長度
    for (int i = 0; i < len; i++) { // 走訪字串每個字元
        temp = (int)str[i]; // 取得字元ASCII值

        // 避免溢位，先對 m 做 modulo
        hash += ((unsigned long)(temp * pow(p, i))) % m;// 避免溢位。pow(p, i)回傳值為double
    }

    return (int)(hash % m); // basic division method
}



/* 方法2：更安全的做法，避免 pow() double 精度問題
int myHashString(const char* str, int m) {
    unsigned long hash = 0;          // hash值初始為0 
    unsigned long long power = 1;    // 儲存p^i，從i=0開始
    int p = 31;                      // 多項式哈希的底數（常用質數）

    int len = strlen(str);           // 取得字串長度
    for (int i = 0; i < len; i++) { // 走訪字串每個字元
        // 計算多項式哈希的一項：str[i] * p^i
        // 先對 m 做 modulo 避免溢位
        hash += ((unsigned long long)str[i] * power) % m;

        power = (power * p) % m; // 更新 power = p^(i+1)，每步也取 modulo m 避免過大
    }

    return (int)(hash % m); // basic division method
}

*/