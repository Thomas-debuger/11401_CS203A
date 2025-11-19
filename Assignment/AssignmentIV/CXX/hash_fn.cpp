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

int myHashInt(int key, int m) {
    // TODO: replace with your own design
    double A = 0.6180339887;
    /*錯誤寫法：因 % 是整數取餘數運算符，不能用在double/float
    double h = floor(m*((key*A)%1));
    key = h;
    */
    double temp = key * A - floor(key * A);
    double temp2 = floor(m * temp);
    key = static_cast<int>(temp2);
    return key % m;  // basic division method
}

int myHashString(const std::string& str, int m) {
    unsigned long hash = 0;
    // TODO: replace with your own design
    int count = 0, temp = 0, p = 31;
    for (int i = 0; i < str.size(); i++) {
        temp = str[i] - '0';
        count += temp * pow(p, i);
    }
    hash = static_cast<unsigned long>(count);
    return static_cast<int>(hash % m);  // basic division method
}
