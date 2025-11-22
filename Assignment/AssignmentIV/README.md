# Homework Assignment IV: Hash Function Design & Observation (C/C++ Version)

This assignment focuses on the design and observation of hash functions using C/C++. 
Students are expected to implement and analyze the behavior of hash functions, 
evaluate their efficiency, and understand their applications in computer science.

Developer: Yun-Hong Wei 
Email: <thomaswei988@gmail.com>  

## My Hash Function
### Integer Keys 
- Formula / pseudocode:   
  ```text   
  Formula:   
  h(k) = ceil(m * (1 - (k*A mod 1)))   
  
  Pseudocode:   
  function hash(k, m, A):   
    x = k * A   
    frac = x - floor(x)   // fractional part = (k*A mod 1)       
    value = m * (1 - frac)   
    h = ceil(value)   
    return h   

  ```
- Rationale:   

✔ Explain my design choices:    
This hash function is built around using the fractional part of kA as a way to spread keys across [0,1) without introducing obvious patterns. When the key k is multiplied by an irrational-like constant A, the sequence of fractional parts (kAmod1) tends to move through the interval in a smooth but irregular manner. This keeps nearby keys from falling into neighboring hash slots.   

The function computes => h(k)=⌈m⋅(1−(kAmod1))⌉   

Reversing the fractional part and scaling it by m maps the distribution to the full table range, and the ceiling guarantees that every output stays within [1,m] consistently.   

✔ Why this design reduces collisions:   
1.Uniform spread from the fractional part
The fractional part of kA is known to be close to uniformly distributed when A is irrational, so the resulting hash values naturally spread across the table instead of piling up in specific regions.   

2.Breaks simple integer patterns   
Basic formulas like k mod m often produce visible patterns—especially with sequential keys. Using kA disrupts these patterns, giving outputs that behave much less predictably and reducing clustering.   

3.Full-range scaling with m   
Multiplying by m ensures the hash function actually uses the entire table instead of favoring certain sections, which helps avoid collisions caused by uneven bucket usage.   

4.Ceiling gives stable, unbiased bucket selection   
The use of ⌈⋅⌉ keeps each result cleanly in an integer bucket and avoids skewing values toward the lower end of the range.   

✔ Summary   
By combining the fractional-part idea with an irrational constant and full-range scaling, this design produces hash outputs that are evenly distributed and resistant to predictable patterns. As a result, collisions are less frequent than in simpler modular hash functions.   

### Non-integer Keys
- Formula / pseudocode:   
  ```text
  Formula:    
  hash(str)=[ ∑(i=0 to n−1)ASCII(str[i]) ⋅ (i+1) ⋅ p^(n⋅i) ] mod m   

  Pseudocode:    
  function myHashString(str, m):   
    hash = 0   
    p = 31   // polynomial base                    
    n = length(str)   

    for i from 0 to n-1:   
        char_val = ASCII(str[i])    
        hash = hash + char_val * (i + 1) * (p^(n * i))    
        hash = hash mod m   // avoid overflow        

    return hash mod m   
  ```
- Rationale:     
✔ Explain my approach:    
This hash function converts a string into an integer by combining each character’s ASCII value with its position and a polynomial weight. Each character is multiplied by (i+1) and p^(n⋅i), where i is the index and n is the string length. This makes characters in different positions affect the hash differently, so even small changes in the string produce distinct hash values. Finally, taking the remainder modulo m ensures the output fits neatly into the hash table.   

The function computes:   
hash(str)=[ ∑(i=0 to n−1)ASCII(str[i]) ⋅ (i+1) ⋅ p^(n⋅i) ] mod m    

Scaling by m and taking modulo ensures that all outputs are within the valid bucket range.   

✔ Its effectiveness for non-integer keys:   
1.Weighted character contribution     
Characters in different positions have different influence, so similar strings produce different hash values, which reduces clustering.    

2.Polynomial weighting    
Using p^(n⋅i) spreads out the hash values in a way that avoids simple sequential patterns common in strings with similar prefixes.   

3.Modulo keeps values in range   
Taking modulo m ensures all hash values map to valid table slots, preventing overflow and uneven distribution.   

4.Position factor (i+1) adds variation     
Multiplying by i+1 further differentiates strings that contain the same characters in different orders, reducing collisions for anagrams or similar strings.    

✔ Summary:   
By combining ASCII values, position weighting, and polynomial powers, this hash function converts strings into integers that are well distributed across the hash table. This reduces clustering, spreads keys evenly, and makes collisions less frequent compared to simpler hashing methods like direct modulo.   

## Experimental Setup
- Table sizes tested (m): 10, 11, 37
- Test dataset:
  - Integers: 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60
  - Strings: "cat", "dog", "bat", "cow", "ant", "owl", "bee", "hen", "pig", "fox"
- Compiler: GCC and G++
- Standard: C23 and C++23

## Results
myHashInt():   
| Table Size (m) | Index Sequence         | Observation              |
|----------------|------------------------|--------------------------|
| 10             | 1, 9, 8, 7, 5, 4, 2, 1, 9, 8, 8, 7, 5, 4, 3, 1, 0, 8, 7, 6 | Irregular pattern, some indices repeat often |
| 11             | 1, 10, 9, 7, 6, 4, 2, 1, 10, 9, 9, 8, 6, 4, 3, 1, 0, 9, 8, 6 | Slightly more spread out, fewer repeated slots |
| 37             | 1, 33, 28, 23, 18, 12, 7, 2, 34, 28, 29, 24, 19, 14, 8, 3, 35, 30, 24, 19 | Near-uniform, keys cover a wider range |

myHashString():   
| Table Size (m) | Index Sequence         | Observation              |
|----------------|------------------------|--------------------------|
| 10             | 5, 3, 4, 0, 9, 7, 1, 8, 3, 0 | Uneven spread, some indices repeat |
| 11             | 9, 6, 8, 1, 8, 1, 4, 9, 4, 5 | Moderate spread, noticeable repeats |
| 37             | 11, 16, 10, 8, 13, 18, 29, 30, 1 | Wider range, fairly uniform |

## Compilation, Build, Execution, and Output

### Compilation
- The project uses a comprehensive Makefile that builds both C and C++ versions with proper flags:
  ```bash
  # Build both C and C++ versions
  make all
  
  # Build only C version
  make c
  
  # Build only C++ version
  make cxx
  ```

### Manual Compilation (if needed)
- Command for C:
  ```bash
  gcc -std=c23 -Wall -Wextra -Wpedantic -g -o C/hash_function C/main.c C/hash_fn.c
  ```
- Command for C++:
  ```bash
  g++ -std=c++23 -Wall -Wextra -Wpedantic -g -o CXX/hash_function_cpp CXX/main.cpp CXX/hash_fn.cpp
  ```

### Clean Build Files
- Remove all compiled files:
  ```bash
  make clean
  ```

### Execution
- Run the compiled binary:
  ```bash
  ./hash_function
  ```
  or
  ```bash
  ./hash_function_cpp
  ```

### Result Snapshot
- Example output for integers:
  ```
  === Hash Function Observation (C Version) ===

  === Table Size m = 10 ===
  Key     Index
  -----------------
  21      1
  22      2
  ...

  === Table Size m = 11 ===
  Key     Index
  -----------------
  21      10
  22      0
  ...

  === Table Size m = 37 ===
  Key     Index
  -----------------
  21      21
  22      22
  ...

  === Hash Function Observation (C++ Version) ===

  === Table Size m = 10 ===
  Key     Index
  -----------------
  21      1
  22      2
  ...

  === Table Size m = 11 ===
  Key     Index
  -----------------
  21      10
  22      0
  ...

  === Table Size m = 37 ===
  Key     Index
  -----------------
  21      21
  22      22
  ...
  ```

- Example output for strings:
  ```
  === String Hash (m = 10) ===
  Key     Index
  -----------------
  cat     0
  dog     0
  ...

  === String Hash (m = 11) ===
  Key     Index
  -----------------
  cat     0
  dog     0
  ...

  === String Hash (m = 37) ===
  Key     Index
  -----------------
  cat     0
  dog     0
  ...
  ```

- Observations: Outputs align with the analysis, showing better distribution with prime table sizes.
- Example output for integers:
  ```
  Hash table (m=10): [1, 9, 8, 7, 5, 4, 2, 1, 9, 8, 8, 7, 5, 4, 3, 1, 0, 8, 7, 6]
  Hash table (m=11): [1, 10, 9, 7, 6, 4, 2, 1, 10, 9, 9, 8, 6, 4, 3, 1, 0, 9, 8, 6]
  Hash table (m=37): [1, 33, 28, 23, 18, 12, 7, 2, 34, 28, 29, 24, 19, 14, 8, 3, 35, 30, 24, 19]
  ```
- Example output for strings:
  ```
  Hash table (m=10): [5, 3, 4, 0, 9, 7, 1, 8, 3, 0]
  Hash table (m=11): [9, 6, 8, 1, 8, 1, 4, 9, 4, 5]
  Hash table (m=37): [11, 16, 10, 8, 13, 18, 29, 30, 1]
  ```
- Observations: Outputs align with the analysis, showing better distribution with prime table sizes.

## Analysis
- Prime vs non-prime `m`: Prime table sizes generally result in better distribution and fewer collisions.
- Patterns or collisions: Non-prime table sizes tend to produce repetitive patterns, leading to more collisions.
- Improvements: Use a prime table size and a well-designed hash function to enhance distribution.

## Reflection
1. Designing hash functions requires balancing simplicity and effectiveness to minimize collisions.
2. Table size significantly impacts the uniformity of the hash distribution, with prime sizes performing better.
3. The design using a prime table size and a linear transformation formula produced the most uniform index sequence.

