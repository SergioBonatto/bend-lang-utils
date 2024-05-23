# Bend Utils Repository

Welcome to Bend Utils! This repository contains a collection of useful functions and types for the Bend programming language. Our mission is to provide a comprehensive library that simplifies and accelerates development with Bend by offering reusable and well-documented tools.

## Table of Contents

- [Introduction](#introduction)
- [Repository Structure](#repository-structure)
- [Usage](#usage)
- [Functions](#functions)
- [Types](#types)
- [Contributing](#contributing)
- [License](#license)

## Introduction

Bend Utils is an unofficial repository that gathers a series of useful functions and types for developers using the Bend language. Instead of functioning as a package manager, users must manually copy the desired functions and types into their projects.

## Repository Structure

The repository is organized into directories, each containing related functions and types. Each function and type is in its own file to facilitate navigation and usage.

```
bend-utils/
├── List/
│   ├── concat.bend
│   ├── append.bend
├── Maybe/
│   ├── maybe.bend
├── Bool/
│   ├── bool.bend
```

## Usage

To use the functions and types provided by Bend Utils, follow these steps:

1. Navigate to the repository directory.
2. Find the function or type you want to use.
3. Copy the code of the function or type directly into your Bend project.

For example, if you want to use the `concat` function:

1. Open the `List/concat.bend` file.
2. Copy the `concat` function code.
3. Paste the code into the appropriate location in your Bend project.

## Functions

Here is a list of the functions currently available in Bend Utils:

### List

- `concat(xs, ys)`: Concatenates two lists.
  ```py
  def concat(xs, ys):
    match ys:
      case List/Nil:
        return xs
      case List/Cons:
        return concat(append(xs, ys.head), ys.tail)
  ```

- `append(xs, x)`: Adds an element to the end of a list.
  ```py
  def append(xs, x):
    match xs:
      case List/Nil:
        return List/Cons(x, List/Nil)
      case List/Cons:
        return List/Cons(xs.head, append(xs.tail, x))
  ```


## Types

Here are the types defined in Bend Utils:

### Maybe

- `Maybe`: Represents an optional value.
  ```py
  type Maybe:
    None
    Some { value }
  ```

### Bool

- `Bool`: Represents a boolean value.
  ```py
  type Bool:
    true
    false
  ```


## Contributing

Contributions are welcome! If you want to add new functions, types, or improve documentation, feel free to open a pull request. Please follow the contribution guidelines:

1. Fork the repository.
2. Create a new branch for your feature or fix: `git checkout -b my-feature`.
3. Commit your changes: `git commit -m 'Add new feature'`.
4. Push to the branch: `git push origin my-feature`.
5. Open a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

---

We hope you find this repository useful! If you have any questions or suggestions, feel free to open an issue. Happy coding with Bend!

