# 📚 Data Structures & Algorithms Notes

This repository contains my study notes for **Data Structures & Algorithms**, including:

- Linked List
- Array
- Hashing
- Stack & Queue
- Trees(Not yet finished)

Notes cover definitions, key operations, C examples, comparisons, and memory/performance tips.

---

## 📑 Contents

1. Linked List
2. Array
3. Hashing
4. Stack & Queue
5. Trees(Not yet finished)
6. Tips & Notes
---

## 🔗 Linked List

- Nodes connected via pointers; dynamic memory
- Types: Singly, Doubly, Circular
- Efficient insertion/deletion; slow random access
- Example: `[10|next] -> [20|next] -> [30|NULL]`

---

## 🔢 Array

- Contiguous memory, fixed size
- Fast random access: O(1)
- Insert/Delete in middle: O(n)
- Example: `int arr[5] = {10,20,30,40,50};`

---

## 🔑 Hashing

- Map keys to indices using a hash function
- Collisions: chaining (linked list) or open addressing (probing)
- Choose table size as prime for better distribution
- Example hash function: `key % tableSize`

---

## 🧱 Stack & Queue

### Stack (LIFO)

- Operations: Push, Pop, Peek
- Use cases: Undo, recursion, expression evaluation
- Array-based: fixed size, fast access
- Linked list-based: dynamic size

### Queue (FIFO)

- Operations: Enqueue, Dequeue, Front
- Use cases: Task scheduling, buffering
- Array-based: circular buffer
- Linked list-based: dynamic size

---

## 📝 Tips & Notes

- **Stack/Queue**: Overflow (full) / Underflow (empty)
- Linked list uses more memory due to pointers but has no fixed size
- Circular array helps reuse space in queues
- Basic operations for all structures: O(1)

---

**Author:** Yun-Hong Wei <thomaswei988@gmail.com>   
**Date:** 2025   
 
