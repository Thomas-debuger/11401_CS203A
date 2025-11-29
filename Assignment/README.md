# Announcement   

### I’ve uploaded several data structures assignments here, and they are intended to be completed in Visual Studio Code.    
---
## AssignmentIV
---

This assignment focuses on the **design, implementation, and evaluation of hash functions**, with the goal of understanding how different hashing strategies influence distribution quality and collision behavior. The work is divided into several major components:

* **Comparing different hashing strategies:**
  One part of the assignment involves analyzing how various design choices affect the performance of a hash function. In particular, we examine whether using a prime or non-prime table size leads to different collision rates, clustering patterns, or periodic behaviors. By experimenting with multiple configurations, we gain insight into why prime-sized tables often produce more uniform hash distributions.

* **Implementing custom hash functions for integers and strings:**
  The core coding task requires writing two functions, `myHashInt()` and `myHashString()`. The integer hash function includes a custom transformation based on fractional-part computation to improve uniformity, while the string hash function uses a polynomial-style approach that incorporates ASCII values, character positions, and weighted powers. To make the implementation more robust, we also take steps to control overflow by applying modulo operations at each stage.

* **Evaluating distribution under different inputs:**
  After implementing the hash functions, we test them across a variety of input patterns—including sequential integers, repeated strings, and random data—to observe how the outputs distribute across different table sizes. By comparing the resulting index sequences and identifying collisions or clustering, we can determine which designs are more effective and how the choice of table size influences the final results.

* **Writing documentation and preparing example code:**
  The assignment also requires producing clear documentation that explains the design choices, formulas, and behavior of the hash functions. All files, including sample code and comments, were written in C and C++ and tested within the Visual Studio Code environment to ensure correctness and consistency.

Overall, this assignment provides hands-on experience with the mathematical and practical aspects of hashing. It highlights how algorithm design, numerical properties like primality, and careful implementation choices work together to produce efficient and reliable hash functions.

