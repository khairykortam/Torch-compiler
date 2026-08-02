# Torch
- Torch is small, compiled, stack-based(go look: https://en.wikipedia.org/wiki/Stack-oriented_programming), self-hosted procedural programming language (just like Forth and WASM) with some C, ruby, and and python syntax inspired.
- In some sense, all languages are stack-based, as they utilize the stack one way or another, but stack-based here refers to the syntax i.e the postfix notation used by the language. For instance, instead of :
```1 + 2```
you write: 
```1 2 +```
pushing and poping things on the stack in that manner.

+ The motives behind making this project are as follows:
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
# Testing
- Test cases are located in `./tests/` folder. 

- The `./showcase_programs/` contains, well... programs to showcase the language? 
- Some solution for CSES problemset ([link](https://cses.fi/problemset/)) are in `./CSES/` 
# Usage
- if you want to use the compiler standone, you only need `./torch `executable and the standard library `./std.torch`
- By default, the compiler searches files to include in `./` and `./std/`, you can add more search paths to include using the `-I` flag, : `./torch -I "path" com ....`.
- Run `./torch` for more info on how to use the compiler.
 

- An alternative approach is to use the main.py to compile the program. This is more safe for testing and adding new features than editting the original self-hosted `torch.torch` file.

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

## literals
### Numbers:
- The language doesn't support floating point numbers nor negative numbers, but it support 64 unsigned integers. 
```
34 35 +
```
pushes 69 on the stack.
- However, you can still process negative numbers by doing the following:
```
10 0 - 
```
which pushes -10 on the stack
### String
- a string is anything enclosed between two quotes(""). However,strings don't allow Unicode, and only allows ASCII characters. Attempting to process Non-ASCII characters will result in undefined behavior.
#### String escape
- `\n`-> newline
- `\\` -> backslash
- `\"` -> double quote
- `\'` -> single quote

Strings are proccessed as follows:
- when a string is encountered, it's size in bytes is pushed onto the stack
- the bytes of the string are copied in a string specific buffer.
- the pointer to the beginning of that string in that buffer is pushed onto the stack.
- Thus, a string pushes two values on the stack: it's size, and it's pointer.
- the `puts` function from the std lib expects two values: the size of buffer, and the pointer to that buffer.
### Characters
- characters are single byte ASCII characters enclosed between two single quotes('').
- It pushes it's value on the stack as an integer.
### C-Strings
- it's a string specifically designed to interact with C code or anything that expect something of that format(e.g syscalls)
- it's a normal string with two differences: it doesn't push it's size on the stack, and it ends with a NULL character.

## Built-in operations

### Arithmetic
| Name | Signature | Description
|----------|----------|----------| 
| `+` | `a:int b:int -- a+b:int`  |  adds up two elements on the top of the stack
| `-` |  `a:int b:int -- a-b:int` | subtracts the two-topmost elements on the stack |
| `*` |  `a:int b:int -- a*b:int` | multiplies the two elements on the top of the stack|  
| `divmod`|  `a:int b:int -- a/b:int a%b:int` | pushes the result of division and modulus operation of the two arguments on the stack
| `/` | `a:int b:int -- a/b:int`| pushes the resultant of dividing the two elements on the stack|
| `%` | `a:int b:int -- a%b:int`| pushes the resultant of performing modulus operation of the two elements on the stack(though using bitwise is better)(since `a%b == a&(b-1)`)|
|`max`| `a:int b:int -- max(a,b):int`| returns the maximum of two numbers
### bitwise
| Name | Signature | Description
|----------|----------|----------|
| `shr` | `a:int b:int -- a>>b:int`  |  right-bit shift
| `shl` | `a:int b:int -- a<<b:int`  |  left-bit shift
| `or` | `a:int b:int -- a OR b:int`  |  bitwise `OR`
| `and` | `a:int b:int -- a AND b:int`  |  bitwise `AND`
| `not` | `a:int -- ~a:int`  |  bitwise `NOT`
### comparison
| Name | Signature | Description
|----------|----------|----------|
| `<` | `a:int b:int -- a<b:bool` | checks if a is less than b
| `>` | `a:int b:int -- a>b:bool` | checks if a is greater than b
| `<=` | `a:int b:int -- a<=b:bool` | checks if a is less than or equal to b
| `>=` | `a:int b:int -- a>=b:bool` | checks if a is less than or equal to b
| `!=` | `a:int b:int -- a!=b:bool` | checks if a doesn't equal to b
### logical operations
| Name | Signature | Description
|----------|----------|----------|
| `lor` | `a:int b:int -- a\|\|b:bool` | logical OR|
| `land` | `a:int b:int -- a&%b:bool` |logical AND | 
| `lnot` | `a:int  -- !a:bool` | Logical NOT|
### stack operations
| Name | Signature | Description
|----------|----------|----------|
| `dup` | `a -- a a` | duplicate an element on the top of the stack|
| `swap` | `a b -- b a` | swap 2 elements on the stack|
| `drop` | `a -- [Empty]` | deletes the top element on the stack |
| `over` | `a b -- a b a` | copy the second element on the stack to the top of the stack|
|`rot` | ` a b c -- b c a` | switch top three elements on the stack | 
### Memory
| Name |  Description|
|----------|----------|
| `!8`  | store 8-bits at the address on the address on the stack  |
| `@8`  | load 8-bits from the address on the stack |
| `!16` |  store 16-bits at the address on the address on the stack  | 
| `@16` |  load 16-bits from the address on the stack    | 
| `!32` |   store 32-bits at the address on the address on the stack | 
| `@32` |  load 32-bits from the address on the stack    | 
| `!64` |  store 64-bits at the address on the address on the stack  | 
| `@64`  |  load 64-bits from the address on the stack    | 
| `cast(int)`     | cast the element on the stack into int|
| `cast(bool)`      | cast the element on the stack into bool|
| `cast(ptr)`     | cast the element on the stack into ptr |
### conditionals
#### ifing 
```
<condition> if 
<body>
else <condition> elif
<body>
else <condition> elif
<body>
....
else 
<body>
end
```

#### while
```
while <condition> do
<something>
end
```


### functions
#### func
- the following is a way to define functions:
```
func zeby_manga int in
while dup 0 > do
dup print 
1 -
end drop
end
```
#### inline 
+ an inline is a function with no return
```
inline func ptr+
ptr int 
--
ptr
in
swap cast(int)
swap cast(int)
+
cast(ptr)
end
```
#### import
+ to import a file:
```
import "<file>.torch"
```

### Memory
#### Global Memory
+ Global memory is declared outside any function, and is maintained throughout the whole program.
+ example:
```
include "std.porth"
const N 26 end
memory buf N end
func main in
0 while dup < do
dup 'a' +
over buffer +ptr 
!8
1 + 
end drop

N buffer puts "\n" puts
end

```
#### Local Memory
+ local memory is declared inside functions, and has limited score to only the function in which the memory is declared.
#### Constants
```
const N 34 end
const M 35 end
const O N M + end
```

### miscullenous
+ `syscall[n]` -> performs a syscall with n arguments. max value for n is 6.
+ `here` -> pushes a string in format "`file-path:row:col`", used mainly for reporting errors and assertions.
+ `argc` -> argument count
+ `argv` -> argument value
#### Structures
+ the following is a way to do structs 
```
include "std.torch"

const Str.count sizeof(int) offset end
const Str.data sizeof(ptr) offset end
const sizeof(Str) reset end
```

# Standard Library
- See `std.torch` to lookup constants and implemenetations

- Some utilities:
+ `nth_argv` -> gets the content of the number of the argument provided
+ `inc64`/`inc8` -> increase the 64/8 integer
+ `dec64`/`dec8` -> decrease the 64/8 pointer value
+ `swap64` -> swap two 64 integer numbers
+ `rand` -> get a random number 
+ `print` -> prints the element on the top of the stack and removes it.
+ `fputs` -> outputs formatted string
+ `eputs` ->
+ `eputu` ->
+ `eput0u` ->
+ `isdigit` -> determines if the input is/is not a digit
+ `isalpha` -> determines if the input is a character (unicode is not supported)
+ `memcpy` -> copy a portion of memory
+ `memset` -> set a portion of memory
+ `append-item` -> append item to a fixed size array
+ `getenv` -> 