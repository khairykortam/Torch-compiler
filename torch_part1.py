#!/usr/bin/env python3

import sys
import subprocess
import os
import shlex
from os import path
from typing import *
from dataclasses import dataclass, field
from enum import IntEnum, Enum, auto
from copy import copy
import traceback

TORCH_EXT = '.torch'
RET_STACK_CAP = 640000

Loc = Tuple[str, int, int]
iota_counter = 0

def iota(reset=False):
    global iota_counter
    if reset:
        iota_counter = 0
    result = iota_counter
    iota_counter += 1
    return result


# Keywords
OP_IF = iota(True)
OP_IFSTAR = iota()
OP_ELSE = iota()
OP_WHILE = iota()
OP_DO = iota()
OP_END = iota()
OP_PROC = iota()
OP_CONST = iota()
OP_OFFSET = iota()
OP_RESET = iota()
OP_ASSERT = iota()
OP_IN = iota()
OP_BIKESHEDDER = iota()
OP_INLINE = iota()
OP_HERE = iota()
OP_INCLUDE = iota()
OP_MEMORY = iota()

# Data Types
DT_INT = iota(True)
DT_BOOL = iota()
DT_PTR = iota()

DATATYPE_BY_NAME = {
    "int": DT_INT,
    "bool": DT_BOOL,
    "ptr": DT_PTR,
}
DATATYPE_NAMES = {v: k for k, v in DATATYPE_BY_NAME.items()}

# Intrinsics
PLUS = iota(True)
MINUS = iota()
MUL = iota()
DIVMOD = iota()
MAX = iota()
EQ = iota()
GT = iota()
LT = iota()
GE = iota()
LE = iota()
NE = iota()
SHR = iota()
SHL = iota()
OR = iota()
AND = iota()
NOT = iota()
PRINT = iota()
DUP = iota()
SWAP = iota()
DROP = iota()
OVER = iota()
ROT = iota()
LOAD8 = iota()
STORE8 = iota()
LOAD16 = iota()
STORE16 = iota()
LOAD32 = iota()
STORE32 = iota()
LOAD64 = iota()
STORE64 = iota()
CAST_PTR = iota()
CAST_INT = iota()
CAST_BOOL = iota()
ARGC = iota()
ARGV = iota()
ENVP = iota()
SYSCALL0 = iota()
SYSCALL1 = iota()
SYSCALL2 = iota()
SYSCALL3 = iota()
SYSCALL4 = iota()
SYSCALL5 = iota()
SYSCALL6 = iota()
STOP = iota()

# Op Types
PUSH_INT = iota(True)
PUSH_PTR = iota()
PUSH_BOOL = iota()
PUSH_STR = iota()
PUSH_CSTR = iota()
PUSH_GLOBAL_MEM = iota()
PUSH_LOCAL_MEM = iota()
INTRINSIC = iota()
IF = iota()
IFSTAR = iota()
ELSE = iota()
END = iota()
WHILE = iota()
DO = iota()
SKIP_PROC = iota()
PREP_PROC = iota()
RET = iota()
CALL = iota()
INLINED = iota()

# Token Types
TOKEN_WORD = iota(True)
TOKEN_INT = iota()
TOKEN_STR = iota()
TOKEN_CSTR = iota()
TOKEN_CHAR = iota()
TOKEN_KEYWORD = iota()

# Memory and string capacity
MEM_CAPACITY = 640000
STR_CAPACITY = 640000
ARG_CAPACITY = 640000

INTRINSIC_BY_NAMES = {
    "+": PLUS,
    "-": MINUS,
    "*": MUL,
    "divmod": DIVMOD,
    "max": MAX,
    "print": PRINT,
    "=": EQ,
    ">": GT,
    "<": LT,
    ">=": GE,
    "<=": LE,
    "!=": NE,
    "shr": SHR,
    "shl": SHL,
    "or": OR,
    "and": AND,
    "not": NOT,
    "dup": DUP,
    "swap": SWAP,
    "drop": DROP,
    "over": OVER,
    "rot": ROT,
    "!8": STORE8,
    "@8": LOAD8,
    "!16": STORE16,
    "@16": LOAD16,
    "!32": STORE32,
    "@32": LOAD32,
    "!64": STORE64,
    "@64": LOAD64,
    "cast(ptr)": CAST_PTR,
    "cast(int)": CAST_INT,
    "cast(bool)": CAST_BOOL,
    "argc": ARGC,
    "argv": ARGV,
    "envp": ENVP,
    "syscall0": SYSCALL0,
    "syscall1": SYSCALL1,
    "syscall2": SYSCALL2,
    "syscall3": SYSCALL3,
    "syscall4": SYSCALL4,
    "syscall5": SYSCALL5,
    "syscall6": SYSCALL6,
    "???": STOP,
}
INTRINSIC_NAMES = {v: k for k, v in INTRINSIC_BY_NAMES.items()}

KEYWORD_BY_NAMES = {
    "if": OP_IF,
    "if*": OP_IFSTAR,
    "else": OP_ELSE,
    "while": OP_WHILE,
    "do": OP_DO,
    "include": OP_INCLUDE,
    "memory": OP_MEMORY,
    "proc": OP_PROC,
    "end": OP_END,
    "const": OP_CONST,
    "offset": OP_OFFSET,
    "reset": OP_RESET,
    "assert": OP_ASSERT,
    "in": OP_IN,
    "--": OP_BIKESHEDDER,
    "inline": OP_INLINE,
    "here": OP_HERE,
}
KEYWORD_NAMES = {v: k for k, v in KEYWORD_BY_NAMES.items()}

@dataclass
class Token:
    typ: int
    text: str
    loc: Loc
    value: Union[int, str]

OpAddr = int
MemAddr = int

@dataclass
class Op:
    typ: int
    token: Token
    operand: Optional[Union[int, str, OpAddr]] = None

@dataclass
class Program:
    ops: List[Op] = field(default_factory=list)
    memory_capacity: int = 0

DataStack = List[Tuple[int, Loc]]

@dataclass
class Context:
    stack: DataStack
    ip: OpAddr
    outs: List[Tuple[int, Loc]]

@dataclass
class Contract:
    ins: Sequence[Tuple[int, Loc]]
    outs: Sequence[Tuple[int, Loc]]
