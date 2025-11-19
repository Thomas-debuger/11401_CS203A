/*
   ========================================
   hash_fn.cpp — implement your hash functions
   ========================================

   Description:
    This file contains the hash functions for integer and string keys.

   Development History:
    - 2025/11/11: Initial implementation
    - 2025/11/17: Refactored to use hash_fn.hpp

   Developer: Yu-Feng Huang <yfhuang@saturn.yzu.edu.tw>
 */
#include "hash_fn.hpp"
#include <cmath>// for std::floor and std::pow

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

    /*錯誤寫法：因 % 是整數取餘數運算符，不能用在double/float
    double h = floor(m*((key*A)%1));
    key = h;
    */
    double temp = key * A - floor(key * A);// (key*A) mod 1
    double temp2 = floor(m * temp);// 完整公式：floor(m * (k*A mod 1))
    key = static_cast<int>(temp2);// 將結果轉為整數型(double -> int)

    return key % m;  // basic division method
}



/*
@brief Computes the hash index for an integer key.
@param key The integer key to hash.
@param m The table size.
@return The computed hash index.
*/

// String Hashing：Polynomial rolling hash
int myHashString(const std::string& str, int m) {
    unsigned long hash = 0;
    // TODO: replace with your own design

    int temp = 0, p = 31;// temp 用來存字元 ASCII 值，p 是多項式哈希的底數

    for (int i = 0; i < str.size(); i++) { // 走訪字串每個字元
        //temp = str[i] - '0'; 錯：這個寫法只適合字元'0'..'9'。字母字串，'c'-'0' = 99-48 = 51 是硬算ASCII，也不是正確做法。
        temp = static_cast<int>(str[i]);// 取得字元 ASCII 值

        //hash += temp * pow(p, i); 可能會溢位，所以要先mod m，利用(a+b+c) mod m = (a mod m + b mod m + c mod m) mod m
        hash += (static_cast<unsigned long>(temp * pow(p, i))) % m; // 避免溢位。pow(p, i)回傳值為double
    }

    return static_cast<int>(hash % m);  // basic division method
}

/*方法2
int myHashString(const std::string& str, int m) {
    unsigned long hash = 0; // 保留
    unsigned long long power = 1;
    const int p = 31;

    for (char c : str) {
        hash += (static_cast<unsigned long long>(c) * power) % m;
        power = (power * p) % m;
    }
    return static_cast<int>(hash % m);
}
*/
