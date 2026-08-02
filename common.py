from typing import *
from dataclasses import dataclass, field
from enum import IntEnum, Enum, auto

TORTH_EXT = '.torch'
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


class Keyword(Enum):
    OP_IF = iota(True)
    OP_IFSTAR = iota()
    OP_ELSE = iota()
    OP_WHILE = iota()
    OP_DO = iota()
    OP_SWITCH = iota()
    OP_CASE = iota()
    OP_DEFAULT = iota()
    OP_BREAK = iota()
    OP_CONTINUE = iota()
    END = iota()
    OP_PROC = iota()
    OP_CONST = iota()
    OP_OFFSET = iota()
    OP_RESET = iota()
    OP_ASSERT = iota()
    IN = iota()
    BIKESHEDDER = iota()
    INLINE = iota()
    HERE = iota()
    INCLUDE = iota()
    MEMORY = iota()


class DataType(IntEnum):
    INT = iota(True)
    BOOL = iota()
    PTR = iota()

assert len(DataType) == 3, "Exhaustive data type definition"
DATATYPE_BY_NAME = {
    "int": DataType.INT,
    "bool": DataType.BOOL,
    "ptr": DataType.PTR,
}
DATATYPE_NAMES = {v: k for k, v in DATATYPE_BY_NAME.items()}
assert len(DataType) == 3, "Exhaustive casts for all data types"

class Intrinsic(Enum):
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

class OpType(Enum):
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
     SWITCH = iota()
     SKIP_PROC = iota()
     PREP_PROC = iota()
     RET = iota()
     CALL = iota()
     INLINED = iota()


class TokenType(Enum):
     TOKEN_WORD = iota(True)
     TOKEN_INT = iota()
     TOKEN_STR=iota()
     TOKEN_CSTR = iota()
     TOKEN_CHAR = iota()
     TOKEN_KEYWORD = iota()

assert len(TokenType) == 6, (
    "Exhuastive Token type definition. The value field of the Toekn dataclass may require updating")

@dataclass 
class Token:
    typ: TokenType
    text: str
    loc: Loc
    value: Union[int, str, Keyword]

OpAddr = int
MemAddr = int

@dataclass
class Op:
    typ: OpType
    token: Token
    operand: Optional[Union[int, str, Intrinsic, OpAddr]] = None

@dataclass
class Program:
    ops: List[Op] = field(default_factory=list)
    memory_capacity: int = 0



MEM_CAPACITY = 640000
STR_CAPACITY = 640000
ARG_CAPACITY = 640000

assert len(Keyword) == 17, f"Exhaustive KEYWORD_NAMES definition. {len(Keyword)}"
KEYWORD_BY_NAMES: Dict[str, Keyword] = {
    "if": Keyword.OP_IF,
    "elif": Keyword.OP_IFSTAR,
    "else": Keyword.OP_ELSE,
    "while": Keyword.OP_WHILE,
    "do": Keyword.OP_DO,
    "include": Keyword.INCLUDE,
    "memory": Keyword.MEMORY,
    "proc": Keyword.OP_PROC,
    "end": Keyword.END,
    "const": Keyword.OP_CONST,
    "offset": Keyword.OP_OFFSET,
    "reset": Keyword.OP_RESET,
    "assert": Keyword.OP_ASSERT,
    "in": Keyword.IN,
    "--": Keyword.BIKESHEDDER,
    "inline": Keyword.INLINE,
    "here": Keyword.HERE,
}
KEYWORD_NAMES: Dict[Keyword, str] = {v: k for k, v in KEYWORD_BY_NAMES.items()}

assert len(Intrinsic) == 44, "Exhaustive INTRINSIC_BY_NAMES definition"
INTRINSIC_BY_NAMES: Dict[str, Intrinsic] = {
    "+": Intrinsic.PLUS,
    "-": Intrinsic.MINUS,
    "*": Intrinsic.MUL,
    "divmod": Intrinsic.DIVMOD,
    "max": Intrinsic.MAX,
    "print": Intrinsic.PRINT,
    "=": Intrinsic.EQ,
    ">": Intrinsic.GT,
    "<": Intrinsic.LT,
    ">=": Intrinsic.GE,
    "<=": Intrinsic.LE,
    "!=": Intrinsic.NE,
    "shr": Intrinsic.SHR,
    "shl": Intrinsic.SHL,
    "or": Intrinsic.OR,
    "and": Intrinsic.AND,
    "not": Intrinsic.NOT,
    "dup": Intrinsic.DUP,
    "swap": Intrinsic.SWAP,
    "drop": Intrinsic.DROP,
    "over": Intrinsic.OVER,
    "rot": Intrinsic.ROT,
    "!8": Intrinsic.STORE8,
    "@8": Intrinsic.LOAD8,
    "!16": Intrinsic.STORE16,
    "@16": Intrinsic.LOAD16,
    "!32": Intrinsic.STORE32,
    "@32": Intrinsic.LOAD32,
    "!64": Intrinsic.STORE64,
    "@64": Intrinsic.LOAD64,
    "cast(ptr)": Intrinsic.CAST_PTR,
    "cast(int)": Intrinsic.CAST_INT,
    "cast(bool)": Intrinsic.CAST_BOOL,
    "argc": Intrinsic.ARGC,
    "argv": Intrinsic.ARGV,
    "envp": Intrinsic.ENVP,
    "syscall0": Intrinsic.SYSCALL0,
    "syscall1": Intrinsic.SYSCALL1,
    "syscall2": Intrinsic.SYSCALL2,
    "syscall3": Intrinsic.SYSCALL3,
    "syscall4": Intrinsic.SYSCALL4,
    "syscall5": Intrinsic.SYSCALL5,
    "syscall6": Intrinsic.SYSCALL6,
    "???": Intrinsic.STOP,
}
INTRINSIC_NAMES: Dict[Intrinsic, str] = {v: k for k, v in INTRINSIC_BY_NAMES.items()}

@dataclass
class Memory:
    offset: MemAddr
    loc: Loc


@dataclass
class Proc:
    inline: bool
    addr: OpAddr
    body_size: int
    loc: Loc
    local_memories: dict
    local_memory_capacity: int


@dataclass
class Const:
    value: int
    typ: DataType
    loc: Loc


@dataclass
class ParseContext:
    stack: list = field(default_factory=list)
    ops: list = field(default_factory=list)
    memories: dict = field(default_factory=dict)
    memory_capacity: int = 0
    procs: dict = field(default_factory=dict)
    consts: dict = field(default_factory=dict)
    current_proc = None
    iota: int = 0
    chain_link: dict = field(default_factory=dict)


# DataStack = List[Tuple[DataType, Loc]]
# depricated type checking

