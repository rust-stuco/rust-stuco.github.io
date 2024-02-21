---
title: Schedule - Rust Stuco
name: Schedule
layout: layouts/page.njk
eleventyNavigation:
  key: Schedule
  order: 2
---
## Week 6: Modules and Testing
**Slides:**
[light](http://htmlpreview.github.io/?https://github.com/rust-stuco/lectures/blob/main/week6/light.html) ([pdf](https://raw.githubusercontent.com/rust-stuco/lectures/main/week6/light.pdf)), [dark](http://htmlpreview.github.io/?https://github.com/rust-stuco/lectures/blob/main/week6/dark.html) ([pdf](https://raw.githubusercontent.com/rust-stuco/lectures/main/week6/dark.pdf))

**Homework:** ([handout](/hw/greplab/greplab.zip), [writeup](/hw/greplab/doc/greplab/index.html))

**Lecture:**
- Module system (30 min)
    - Packages and Crates (5 min)
    - Modules (25 min)
        - Using Modules (10 min)
        - Paths (10 min)
        - Misc (5 min)
- Testing (20 min)
    - Simple Testing (10 min)
    - Controlled Testing (5 min)
    - Test Organization (5 min)

**Extra Material**
- Rust Book Chapters 7, 11, and 14


## Week 5: Error Handling and Traits
**Slides:**
[light](http://htmlpreview.github.io/?https://github.com/rust-stuco/lectures/blob/main/week5/light.html) ([pdf](https://raw.githubusercontent.com/rust-stuco/lectures/main/week5/light.pdf)), [dark](http://htmlpreview.github.io/?https://github.com/rust-stuco/lectures/blob/main/week5/dark.html) ([pdf](https://raw.githubusercontent.com/rust-stuco/lectures/main/week5/dark.pdf))

**Homework:** ([handout](/hw/summarylab/summarylab.zip), [writeup](/hw/summarylab/doc/summarylab/index.html))

**Agenda:**
- Type Aliases
- Const Generics
- Error Handling
    - `panic!`
    - `Result<V,E>`
- The Never Type
- Traits
    - Trait Bounds
    - `Copy` vs `Clone`
    - Supertraits
    - Derivable Traits

**Extra Material:**
- Rust Book Chapter 10.1 and 10.2

## Week 4: Standard Collections and Generics
**Slides:**
[light](http://htmlpreview.github.io/?https://github.com/rust-stuco/lectures/blob/main/week4/light.html) ([pdf](https://raw.githubusercontent.com/rust-stuco/lectures/main/week4/light.pdf)), [dark](http://htmlpreview.github.io/?https://github.com/rust-stuco/lectures/blob/main/week4/dark.html) ([pdf](https://raw.githubusercontent.com/rust-stuco/lectures/main/week4/dark.pdf))

**Homework:** ([handout](/hw/multilab/multilab.zip), [writeup](/hw/multilab/doc/multilab/index.html))

**Agenda:**
- Vectors
    - `Vec<T>` API
    - Ownership and Borrowing
- Strings
    - UTF-8
    - `String` API
- Maps
    - Focus on `HashMap` and `HashSet`
    - `Entry` API
- Generics
    - Functions
    - Structs and Enums
    - `impl` Blocks
    - Monomorphization

**Extra Material:**
- Rust Book Chapters 8 and 10.1

## Week 3: Structs and Enums
**Slides:**
[light](http://htmlpreview.github.io/?https://github.com/rust-stuco/lectures/blob/main/week3/light.html) ([pdf](https://raw.githubusercontent.com/rust-stuco/lectures/main/week3/light.pdf)), [dark](http://htmlpreview.github.io/?https://github.com/rust-stuco/lectures/blob/main/week3/dark.html) ([pdf](https://raw.githubusercontent.com/rust-stuco/lectures/main/week3/dark.pdf))

**Homework:** ([handout](/hw/pokelab/pokelab.zip), [writeup](/hw/pokelab/doc/pokelab/index.html))  
**Agenda:**
- Ownership Review
- Structs
    - Creating Structs
        - Update syntax
    - Tuple Structs
    - Unit Structs
    - Lifetimes sneak peek
- `impl` Structs and Methods
    - Automatic referencing and dereferencing
    - `Self` vs `&self`
    - Associated functions
- Enum basics
    - Pattern Matching
    - Option Type
    - `if let`

**Extra Material:**
- Rust Book Chapters 5 and 6

## Week 2: Ownership
**Slides:**
[light](http://htmlpreview.github.io/?https://github.com/rust-stuco/lectures/blob/main/week2/light.html) ([pdf](https://raw.githubusercontent.com/rust-stuco/lectures/main/week2/light.pdf)), [dark](http://htmlpreview.github.io/?https://github.com/rust-stuco/lectures/blob/main/week2/dark.html) ([pdf](https://raw.githubusercontent.com/rust-stuco/lectures/main/week2/dark.pdf))

**Homework:** ([handout](/hw/getownedlab/getownedlab.zip), [writeup](/hw/getownedlab/doc/getownedlab/index.html))  
**Agenda:**
- Ownership
    - Announcements and Review
    - Ownership Rules
    - Memory and Allocation
    - `String` Type and Aliasing
    - `Copy` and `Clone` Traits
    - Ownership with Functions and Return Values
- References and Borrowing
    - Reference Vs Ownership
    - Immutable and Mutable References
    - Dangling References and Data Races
- Slices
    - Memory Layout
    - `&str`
- `Vec`
    - Memory Layout

**Extra Material:**
- [Rust Book Chapter 4](https://doc.rust-lang.org/book/ch04-00-understanding-ownership.html)
- [YouTube video](https://www.youtube.com/watch?v=VFIOSWy93H0)

## Week 1: Introduction
**Slides:**
[light](http://htmlpreview.github.io/?https://github.com/rust-stuco/lectures/blob/main/week1/light.html) ([pdf](https://raw.githubusercontent.com/rust-stuco/lectures/main/week1/light.pdf)), [dark](http://htmlpreview.github.io/?https://github.com/rust-stuco/lectures/blob/main/week1/dark.html) ([pdf](https://raw.githubusercontent.com/rust-stuco/lectures/main/week1/dark.pdf))

**Homework:** ([handout](/hw/primerlab/primerlab.zip), [writeup](/hw/primerlab/doc/primerlab/index.html))  
**Agenda:**
- Why Rust?
- Cargo Basics
- Syntax
    - Variables and Mutability
    - Data Types
        - Scalar Types
        - Compound Types
    - Functions, Statements, and Expressions
    - Control Flow
- Course Logistics
- Installing Rust

**Extra Material**
- [The Rust Lang Book Chapters 1-3](https://doc.rust-lang.org/book/ch01-00-getting-started.html)
- [`rustlings` exercises](https://github.com/rust-lang/rustlings)
    - `variables`
    - `functions`
    - `if`
    - `primitive_types`

