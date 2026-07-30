# Torch
- Torch is small, compiled, stack-based(go look: https://en.wikipedia.org/wiki/Stack-oriented_programming), self-hosted procedural programming language (just like Forth and WASM) with some C, ruby, and and python syntax inspired.
- In some sense, all languages are stack-based, as they utilize the stack one way or another, but stack-based here refers to the syntax i.e the postfix notation used by the language. For instance, instead of :
```1 + 2```
you write: 
```1 2 +```
pushing and poping things on the stack in that manner.
The motives behind making this project are as follows:
- Develop a fully functional self-hosted compiler, completely written in itself than need no external resources.
- learn new concepts such as lexers, parsers, bytecode, etc...
- Study compilers in depth, getting introducted to new concepts such as ABIs(not to be confused with APIs), stack-based languages, assembly instructions, the difference between different assembly archetictures.
- Learn Python development and get familiar with its libraries and syntax for future projects.

# Hello World
- The following program prints "Hello, world" on the screen followed by a newline:
```
include "std.torch"
"Hello, World\n" puts 
```
- printing numbers from 0 to 99
```
include "std.torch"
0 while dup 100 < do
dup print 1 +
end drop
```

# Quick Starter
- You can install the torch ELF 64-bit exectuable in the github releases or 
- clone the repo and bootstrap the self-hosted compiler(torch.torch) using the python enivornment:
```
python3 main.py com torch.torch 
```
and run the exectuable
```
./torch
```
#Testing
- Test cases are located in `./tests/` folder. 

- The `./showcase_programs/` contains, well... programs to showcase the language? 
- Some solution for CSES problemset[link](https://cses.fi/problemset/) are in `\CSES\`
# Usage
- if you want to use the compiler standone, you only need `./porth `executable and the standard library `./std.torch`
- By default, the compiler searches files to include in `./` and `./std/`, you can add more search paths to include using the `-I` flag, : `./porth -I "path" com ....`.
Then Run `./porth` for more info on how to use the compiler.
 

- An alternative approach is to use the main.py to compile the program. This is more safe for testing and adding new features than editting the original self-hosted torch.torch file.

# project structure
 + `common.py` -> contains constants and type defintions for the compiler
 + `const.py` -> contains methods related to introducing and storing constant 
 + `expressions`
 + `diagnostics.py` -> compiler error handling
 + `lexer.py` -> lexes file content into tokens
 + `parse.py` -> parses file content into operations
 + `compiler_generator.py` -> emits assembly code to output.asm
 + `main.py` -> invoked to compile the program and link it into and exectuable
 + `std.torch` -> standard libary
 + `torch.torch` -> self-hosted implementation
 + `./tests` -> contains tests
 + `./showcase_programs` -> useful example programs
 


# Language Handbook


# Standard Library
- See `std.torch` to lookup constants and implemenetations

- Some utilities:
+ `nth_argv` -> gets the content of the number of the argument provided
+ `inc64`/`inc8` -> increase the 64/8 integer
+ `dec64`/`dec8` -> decrease the 64/8 pointer value
+ `swap64` -> swap two 64 integer numbers
+ `rand` -> get a random number 
+ `fputs` -> outputs formatted string
+ `isdigit` -> determines if the input is/is not a digit
+ `isalpha` -> determines if the input is a character (unicode is not supported)
+ `memcpy` -> copy a portion of memory
+ `memset` -> set a portion of memory
+ `append-item` -> append item to a fixed size array
