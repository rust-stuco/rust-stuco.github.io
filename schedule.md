---
title: Schedule - Rust Stuco
name: Schedule
layout: layouts/page.njk
eleventyNavigation:
  key: Schedule
  order: 2
---
## Week 10: Smart Pointers and Unsafe
**Slides:**
[light](http://htmlpreview.github.io/?https://github.com/rust-stuco/lectures/blob/main/week10/light.html) ([pdf](https://raw.githubusercontent.com/rust-stuco/lectures/main/week10/light.pdf)), [dark](http://htmlpreview.github.io/?https://github.com/rust-stuco/lectures/blob/main/week10/dark.html) ([pdf](https://raw.githubusercontent.com/rust-stuco/lectures/main/week10/dark.pdf))

**Homework:** Final project season!

**Lecture:**
- The Rc<T> Type
- The RefCell<T> Type
- Memory Leaks
- Unsafe Superpowers
- Raw Pointers
- FFI

## Week 9: Box and Trait Objects
**Slides:**
[light](http://htmlpreview.github.io/?https://github.com/rust-stuco/lectures/blob/main/week9/light.html) ([pdf](https://raw.githubusercontent.com/rust-stuco/lectures/main/week9/light.pdf)), [dark](http://htmlpreview.github.io/?https://github.com/rust-stuco/lectures/blob/main/week9/dark.html) ([pdf](https://raw.githubusercontent.com/rust-stuco/lectures/main/week9/dark.pdf))

**Homework:** Final project season!

**Lecture:**
- The `Box<T>` Type
- The `Deref` Trait and Deref Coercion
- The `Drop` Trait and `std::mem::drop`
- Object-Oriented Programming
- Trait Objects
    - Dynamic dispatch with `dyn`
- Dynamically Sized Types
<!-- - Object Safety -->

## Week 8: Lifetimes
**Slides:**
[light](http://htmlpreview.github.io/?https://github.com/rust-stuco/lectures/blob/main/week8/light.html) ([pdf](https://raw.githubusercontent.com/rust-stuco/lectures/main/week8/light.pdf)), [dark](http://htmlpreview.github.io/?https://github.com/rust-stuco/lectures/blob/main/week8/dark.html) ([pdf](https://raw.githubusercontent.com/rust-stuco/lectures/main/week8/dark.pdf))

**Homework:** ([on Gradescope](https://www.gradescope.com/courses/655380))

**Lecture:**
- Lifetimes Intro and Motivation
- Lifetime Annotations
- Lifetime Elision
- Lifetimes as Generics and Bounds
- 'static Lifetimes
- What is `'a` lifetime [video](https://www.youtube.com/watch?v=gRAVZv7V91Q)?

## Week 7: Crates, Closures, and Iterators
**Slides:**
[light](http://htmlpreview.github.io/?https://github.com/rust-stuco/lectures/blob/main/week7/light.html) ([pdf](https://raw.githubusercontent.com/rust-stuco/lectures/main/week7/light.pdf)), [dark](http://htmlpreview.github.io/?https://github.com/rust-stuco/lectures/blob/main/week7/dark.html) ([pdf](https://raw.githubusercontent.com/rust-stuco/lectures/main/week7/dark.pdf))

**Homework:** ([handout](/hw/iterlab/iterlab.zip), [writeup](/hw/iterlab/doc/iterlab/index.html))

**Lecture:**
- Crate Highlights
    - `rand`
    - `clap`
    - `anyhow`
    - `tracing`
    - `flamegraph`
- Closures
    - Fn Traits
- Iterators
    - Loops vs. Iterators

**Extra Material:**
- Rust Book Chapters 13 and 14

## Week 6: Modules and Testing
**Slides:**
[light](http://htmlpreview.github.io/?https://github.com/rust-stuco/lectures/blob/main/week6/light.html) ([pdf](https://raw.githubusercontent.com/rust-stuco/lectures/main/week6/light.pdf)), [dark](http://htmlpreview.github.io/?https://github.com/rust-stuco/lectures/blob/main/week6/dark.html) ([pdf](https://raw.githubusercontent.com/rust-stuco/lectures/main/week6/dark.pdf))

**Homework:** ([handout](/hw/greplab/greplab.zip), [writeup](/hw/greplab/doc/greplab/index.html))

**Lecture:**
- Module System
    - Packages and Crates
    - Modules
        - Using Modules
        - Paths
        - Misc
- Testing
    - Simple Testing
    - Controlled Testing
    - Test Organization

**Extra Material:**
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
- [Rust Book Chapters 1-3](https://doc.rust-lang.org/book/ch01-00-getting-started.html)
- [`rustlings` exercises](https://github.com/rust-lang/rustlings)
    - `variables`
    - `functions`
    - `if`
    - `primitive_types`

