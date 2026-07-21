from common import *
from diagnostics import *

def eval_const_value(ctx, rtokens):
    """Evaluate compile-time constant expressions"""
    stack = []
    
    while len(rtokens) > 0:
        token = rtokens.pop()
        
        if token.typ == TokenType.TOKEN_KEYWORD:
            if token.value == Keyword.OP_END:
                break
            elif token.value == Keyword.OP_OFFSET:
                if len(stack) < 1:
                    compiler_error(token.loc, "not enough arguments for `offset` keyword")
                    exit(1)
                offset, typ = stack.pop()
                if typ is not DataType.INT:
                    compiler_error(token.loc, "`offset` expects type int")
                    exit(1)
                stack.append((ctx.iota, DataType.INT))
                ctx.iota += offset
            elif token.value == Keyword.OP_RESET:
                stack.append((ctx.iota, DataType.INT))
                ctx.iota = 0
            else:
                compiler_error(token.loc, "unsupported keyword in compile time evaluation")
                exit(1)
        
        elif token.typ == TokenType.TOKEN_INT:
            stack.append((token.value, DataType.INT))
        
        elif token.typ == TokenType.TOKEN_WORD:
            if token.value == "+":
                if len(stack) < 2:
                    compiler_error(token.loc, "not enough arguments for `+` intrinsic")
                    exit(1)
                a, a_type = stack.pop()
                b, b_type = stack.pop()
                
                if a_type == DataType.INT and b_type == DataType.INT:
                    stack.append((a + b, DataType.INT))
                elif a_type == DataType.INT and b_type == DataType.PTR:
                    stack.append((a + b, DataType.PTR))
                elif a_type == DataType.PTR and b_type == DataType.INT:
                    stack.append((a + b, DataType.PTR))
                else:
                    compiler_error(token.loc, "invalid types for `+` intrinsic")
                    exit(1)
            
            elif token.value == "-":
                if len(stack) < 2:
                    compiler_error(token.loc, "not enough arguments for `-` intrinsic")
                    exit(1)
                b, b_type = stack.pop()
                a, a_type = stack.pop()
                
                if a_type == DataType.INT and b_type == DataType.INT:
                    stack.append((a - b, DataType.INT))
                elif a_type == DataType.PTR and b_type == DataType.PTR:
                    stack.append((a - b, DataType.INT))
                elif a_type == DataType.PTR and b_type == DataType.INT:
                    stack.append((a - b, DataType.PTR))
                else:
                    compiler_error(token.loc, "invalid types for `-` intrinsic")
                    exit(1)
            
            elif token.value == "*":
                if len(stack) < 2:
                    compiler_error(token.loc, "not enough arguments for `*` intrinsic")
                    exit(1)
                a, a_type = stack.pop()
                b, b_type = stack.pop()
                
                if a_type == b_type and a_type == DataType.INT:
                    stack.append((a * b, DataType.INT))
                else:
                    compiler_error(token.loc, "invalid types for `*` intrinsic")
                    exit(1)
            
            elif token.value == "divmod":
                if len(stack) < 2:
                    compiler_error(token.loc, "not enough arguments for `divmod` intrinsic")
                    exit(1)
                a, a_type = stack.pop()
                b, b_type = stack.pop()
                
                if a_type == b_type and a_type == DataType.INT:
                    stack.append((b // a, DataType.INT))
                    stack.append((b % a, DataType.INT))
                else:
                    compiler_error(token.loc, "invalid types for `divmod` intrinsic")
                    exit(1)
            
            elif token.value == "drop":
                if len(stack) < 1:
                    compiler_error(token.loc, "not enough arguments for `drop` intrinsic")
                    exit(1)
                stack.pop()
            
            elif token.value == "cast(bool)":
                if len(stack) < 1:
                    compiler_error(token.loc, "not enough arguments for `cast(bool)` intrinsic")
                    exit(1)
                value, typ = stack.pop()
                stack.append((value, DataType.BOOL))
            
            elif token.value == "cast(int)":
                if len(stack) < 1:
                    compiler_error(token.loc, "not enough arguments for `cast(int)` intrinsic")
                    exit(1)
                value, typ = stack.pop()
                stack.append((value, DataType.INT))
            
            elif token.value == "cast(ptr)":
                if len(stack) < 1:
                    compiler_error(token.loc, "not enough arguments for `cast(ptr)` intrinsic")
                    exit(1)
                value, typ = stack.pop()
                stack.append((value, DataType.PTR))
            
            elif token.value == "=":
                if len(stack) < 2:
                    compiler_error(token.loc, "not enough arguments for `=` intrinsic")
                    exit(1)
                a, a_type = stack.pop()
                b, b_type = stack.pop()
                
                if a_type != b_type:
                    compiler_error(token.loc, "types must match for `=` intrinsic")
                    exit(1)
                
                stack.append((int(a == b), DataType.BOOL))
            
            elif token.value == "max":
                if len(stack) < 2:
                    compiler_error(token.loc, "not enough arguments for `max` intrinsic")
                    exit(1)
                a, a_type = stack.pop()
                b, b_type = stack.pop()
                
                if a_type == b_type and a_type == DataType.INT:
                    stack.append((max(a, b), DataType.INT))
                else:
                    compiler_error(token.loc, "invalid types for `max` intrinsic")
                    exit(1)
            
            elif token.value in ctx.consts:
                const = ctx.consts[token.value]
                stack.append((const.value, const.typ))
            
            else:
                compiler_error(token.loc, "unsupported word `%s` in compile time evaluation" % token.value)
                exit(1)
        
        else:
            compiler_error(token.loc, "unsupported token type in compile time evaluation")
            exit(1)
    
    if len(stack) != 1:
        compiler_error(token.loc, "expression must result in single value")
        exit(1)
    
    return stack.pop()