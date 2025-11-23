/*
   ========================================
   hash_fn.cpp — implement your hash functions
   ========================================

   Description:
    This file contains the hash functions for integer and string keys.

   Development History:
    - 2025/11/18: Initial implementation
    - 2025/11/19: First time done hash_fn.cpp
    - 2025/11/20: Modified hash_fn.cpp to add function comments
    - 2025/11/20: Revised myHashInt and myHashString functions for better distribution
    - 2025/11/23: Transfered comments from Chinese to English
    - 2025/11/23: Finish hash_fn.cpp


   Developer: Yun-Hong Wei <thomaswei988@gmail.com>
 */

#include "hash_fn.hpp"
#include <cmath>   // for std::floor, std::ceil, std::pow

/*
 @brief Computes the hash index for an integer key.
 @param key The integer key to hash.
 @param m The table size.
 @return The computed hash index.
 */

// "This function transforms the input key using a custom formula centered on fractional-part computation,
//  redistributing the value before mapping it into a hash index between 0 and m-1 for better uniformity."
int myHashInt(int key, int m) {
    // TODO: replace with your own design

    double A = 3.1415926; // Using an approximate value of the mathematical constant pi (π)

    /* Incorrect usage: % is the integer remainder operator and cannot be applied to double/float.
       (key * A) % 1;
    */

    double temp = key * A - floor(key * A); // (key * A) mod 1
    temp = 1 - temp; // Compute 1 - ((k * A) mod 1)
    double temp2 = ceil(m * temp); // Full formula: h(k) = ceil(m * (1 - (k*A mod 1))), helps avoid clustering at low indices
    key = static_cast<int>(temp2); // Convert result from double to int

    return key % m;  // Basic division method
}

/*
@brief Computes the hash index for a string key.
@param key The string key to hash.
@param m The table size.
@return The computed hash index.
*/

// "This function processes each character of the string using its ASCII value, its position, and a polynomial weight.
//  The accumulated value is then mapped to 0 ~ m-1 to ensure more even distribution across the hash table."
int myHashString(const std::string& str, int m) {
    unsigned long hash = 0;
    // TODO: replace with your own design

    const int p = 31; // Polynomial base

    for (int i = 0; i < str.size(); i++) { // Iterate through each character
        // ASCII value * (position + 1) * p^(string_length * i), accumulated into hash
        hash += static_cast<unsigned long>(str[i]) * (i + 1) * pow(p, str.size() * i);
        hash %= m; // Modulo at every step to prevent overflow
    }

    return static_cast<int>(hash % m); // Basic division method
}

/* Alternative method (safer, avoids pow)
int myHashString(const std::string& str, int m) {
    unsigned long hash = 0;       // Kept to satisfy assignment requirements
    const int p = 31;             // Polynomial base
    unsigned long long power = 1; // Accumulated power of p

    for (int i = 0; i < str.size(); i++) {
        hash += (static_cast<unsigned long long>(str[i]) * (i + 1) * power) % m; // ASCII * (position+1) * power
        hash %= m;                     // Modulo each step to avoid overflow
        power = (power * p) % m;       // Update power to p^(i+1) % m
    }

    return static_cast<int>(hash % m); // Basic division method
}
*/
