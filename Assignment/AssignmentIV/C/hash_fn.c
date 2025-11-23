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

// "This function transforms the input key using a custom formula based on fractional-part manipulation,
//  redistributing its value before mapping it to a hash index between 0 and m-1 to achieve a more uniform spread."
int myHashInt(int key, int m) {
    // TODO: replace with your own design

    double A = 3.1415926; // Using π as a constant

    /* Incorrect example: (key*A) % 1 cannot use %, because % is for integers only */
    /* (key * A) % 1; */

    double temp = key * A - floor(key * A); // (key * A) mod 1
    temp = 1 - temp; // 1 - ( (k * A) mod 1 )
    double temp2 = ceil(m * temp); // Full formula: h(k) = ceil(m * (1 - (k*A mod 1))), used to avoid clustering at the front of the table
    key = (int)temp2; // Convert double to int

    return key % m;  // Basic division method
}

/*
@brief Computes the hash index for a string key.
@param str The string key to hash.
@param m The table size.
@return The computed hash index.
*/

// "This function processes each character of the string using its ASCII value, position, and a polynomial weight,
//  combining them into a hash value and mapping it to 0 ~ m-1 to ensure even distribution across the table."
int myHashString(const char* str, int m) {
    unsigned long hash = 0;
    // TODO: replace with your own design

    const int p = 31; // Base for the polynomial hash

    int len = strlen(str); // Get string length

    for (int i = 0; i < len; i++) { // Traverse each character
        // ASCII value × (position + 1) × p^(len * i)
        // Gives different weights based on both character and position
        hash += (unsigned long)str[i] * (i + 1) * pow(p, len * i);
        hash %= m; // Mod every step to prevent overflow and maintain distribution
    }

    return (int)(hash % m); // Basic division method
}


/* Alternative version (safer, without pow)
int myHashString(const char* str, int m) {
    unsigned long hash = 0; // Keep for assignment requirement
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
