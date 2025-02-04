# Bend-lang-utils

Welcome to **Bend-lang-utils** – an unofficial, community-driven library of high-quality, functional programming utilities for the Bend language. With more than 12 years of functional programming experience, this project is continually evolving to provide a comprehensive collection of pure functions, immutable data types, and modular components for solving real-world problems in a functional paradigm.

---

## Project Overview

**Bend-lang-utils** is organized into domain-specific modules represented by files ending with `.bend`. Each module is carefully designed to work seamlessly with others while upholding the principles of functional programming. Current modules include:

- **BinaryTree**
  Offers functions for constructing and manipulating binary trees. Insert elements with [`bst_insert`](Data_pythonish/BinaryTree/bst_insert.bend), traverse with [`to_list`](Data_pythonish/BinaryTree/to_list.bend), and extract keys with [`key_bits`](Data_pythonish/BinaryTree/key_bits.bend).

- **Bits**
  Provides low-level bitwise operations and arithmetic. Perform bitwise addition with [`add`](Data_pythonish/Bits/add.bend) and access specific bits using [`at`](Data_pythonish/Bits/at.bend).

- **Bool**
  A collection of Boolean utilities for expressive logical operations. Compare Booleans with [`equal`](Data_pythonish/Bool/equal.bend), compute logical disjunction with [`or`](Data_pythonish/Bool/or.bend), and derive NAND with [`nand`](Data_pythonish/Bool/nand.bend).

- **List**
  Implements list processing functions using recursion and pattern matching. Concatenate lists using [`concat`](Data_pythonish/List/concat.bend), append elements via [`append`](Data_pythonish/List/append.bend), or reverse a list with [`reverse`](Data_pythonish/List/reverse.bend).

- **Option**
  Defines the `Option` type with constructors `Some` and `None` for safe handling of optional values. Transform options with [`map`](Data_pythonish/Option/map.bend), fallback using [`default`](Data_pythonish/Option/default.bend), or extract values with [`flatten`](Data_pythonish/Option/flatten.bend).

- **Pair**
  Offers utilities for tuple (pair) manipulation. Swap elements using [`swap`](Data_pythonish/Pair/swap.bend), apply functions to the first element with [`map_fst`](Data_pythonish/Pair/map_fst.bend) and to the second with [`map_snd`](Data_pythonish/Pair/map_snd.bend).

- **Planned Modules & Types**
  As the project evolves, we will expand to include many additional types and functions. Upcoming modules and domains include, but are not limited to:
  - **BinTree, AVLTree, ArrTree, BinMap** – Advanced tree structures and map implementations.
  - **ByteString, String** – Efficient string and byte array manipulation.
  - **Either, Maybe, Result** – Enhanced error handling and composition for optional values.
  - **Float, F64, Int, Nat, U32, U64, Word8** – Numerical and arithmetic utilities.
  - **JSON, Parser** – Robust data interchange and parsing functionalities.
  - **Network, IO, Buffer, Concurrent** – Modules for network communication, file I/O, buffering, and concurrency.
  - **OrdMap, OrdSet** – Immutable collections based on ordering mechanisms.
  - **Queue, DiffList, Trait, V2, QuadTree, Time, Unit, Function, Ordering, Char, Empty, Bool** – A wide assortment of other utilities to enrich the functional programming ecosystem.

Each new module will adhere strictly to the principles of immutability, purity, and composability.

---

## Core Principles & Best Practices

### Pure Functions & Immutability
- **Consistency:** Every function is designed to be pure; given the same input they always produce the same output.
- **Immutability:** Data structures remain unchanged; instead, new versions are created during transformations.
- **No Side Effects:** Functions avoid altering any shared global state, simplifying debugging and reasoning.

### Pattern Matching & Recursion
- **Pattern Matching:** Extensively used to deconstruct and process data variants (see [`map`](Data_pythonish/Option/map.bend) or [`reverse`](Data_pythonish/List/reverse.bend)).
- **Recursion:** The primary iteration strategy for immutable structures like lists or trees.

### Modular & Composable Design
- **Self-contained Modules:** Each module defines its own types and functions (e.g., [`Option`](Data_pythonish/Option/_.bend) and [`Bool`](Data_pythonish/Bool/_.bend)).
- **Composable Functions:** Functions are designed to interoperate seamlessly; they return new data structures that can be passed to other functions.

### Documentation and Testing
- **Extensive In-line Documentation:** Every function includes detailed comments to describe its behavior and design rationale.
- **Unit Testing:** While planned, a comprehensive suite of tests will be integrated to ensure module reliability.
- **Usage Examples:** Practical examples accompany each module to guide users through typical usage scenarios.

---

## Usage Examples

### BinaryTree Example

Insert an element into a binary search tree:
```bend
# Using bst_insert from BinaryTree module
tree = BinaryTree/Null
tree = bst_insert(10, tree)
tree = bst_insert(5, tree)
tree = bst_insert(15, tree)
```
Refer to

bst_insert

 for further details.

### List Manipulation Example

Concatenate two lists:
```bend
# Append and concat usage from List module
l1 = List/Cons(1, List/Cons(2, List/Nil))
l2 = List/Cons(3, List/Cons(4, List/Nil))
combined = concat(l1, l2)
```
See

concat

 for the full implementation.

### Option Handling Example

Safely transform an optional value:
```bend
# Using Option.map from Option module
o_value = Option/Some(5)
result = map(o_value, (lambda x: x * 2))
```
For more details, consult

map

.

### Boolean Utility Example

Perform logical operations:
```bend
# Logical operations using Bool module
a = Bool/true
b = Bool/false
result = or(a, b)
```
Refer to

or

 for the underlying implementation.

---

## Contribution Guidelines

Contributions to **Bend-lang-utils** are welcomed. To ensure consistency and quality:
1. **Follow Functional Paradigms:** Submit pure functions and immutable data transformations.
2. **Maintain Code Consistency:** Abide by existing naming conventions, file structure, and coding standards.
3. **Document Thoroughly:** Include comprehensive inline comments and usage examples for new code.
4. **Include Tests:** Add unit tests to support changes and maintain project stability.
5. **Discuss Major Changes:** For significant changes or new modules, open an issue or pull request discussion to align with the project’s overall vision.

To contribute:
```bash
# 1. Fork the repository
# 2. Create a new feature branch
git checkout -b feature/your-feature

# 3. Commit your changes with clear messages
git commit -m "Add new feature: <describe your feature>"

# 4. Push to your fork and open a pull request
git push origin feature/your-feature
```

---

## Roadmap

Planned enhancements for **Bend-lang-utils** include:
- **Expanding Domain Coverage:** Introducing numerous modules for advanced numerical types, parsers, network I/O, and more.
- **Enhancing Test Coverage:** Building a robust suite of tests to ensure future stability.
- **Optimizing Performance:** Profiling critical functions and refining them without compromising purity.
- **Improving Documentation:** Continuously updating this README and inline documentation as new modules are added.

---

## Upcoming Styles

While the current implementation adopts the **Data_pythonish** style (a Python-inspired syntax), future releases of **Bend-lang-utils** will introduce additional notational styles:

- **OCaml/Haskell Style:** Adopting equational notation that emphasizes declarative, pattern-based definitions.
- **Lambda Calculus Style:** A pure lambda calculus-inspired syntax, featuring actual lambda symbols for function abstraction.

These new styles will be released after the full completion and stabilization of the current Data_pythonish modules.

For more details on the current implementation, see the [Data_pythonish/](Data_pythonish/) directory.

---

## License

This project is licensed under the MIT License. See the LICENSE file for more information.

---

*Bend-lang-utils* is your basis for building functional, reliable, and immutable solutions in the Bend language. Explore the various modules to harness the power of functional programming and contribute to this growing community-driven project.
