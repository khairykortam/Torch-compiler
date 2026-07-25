from common import *
from diagnostics import *
from lexer import *
from const import eval_const_value
from os import path




def check_name_redefinition(ctx, name, loc):
    """Check if a name is already defined"""
    if ctx.current_proc is None:
        if name in ctx.memories:
            compiler_error(loc, "redefinition of a global memory region `%s`" % name)
            compiler_note(ctx.memories[name].loc, "the original definition is located here")
            exit(1)
    else:
        if name in ctx.current_proc.local_memories:
            compiler_error(loc, "redefinition of a local memory region `%s`" % name)
            compiler_note(
                ctx.current_proc.local_memories[name].loc,
                "the original definition is located here",
            )
            exit(1)
    
    if name in INTRINSIC_BY_NAMES:
        compiler_error(loc, "redefinition of an intrinsic word `%s`" % (name,))
        exit(1)
    if name in ctx.procs:
        compiler_error(loc, "redefinition of a procedure `%s`" % (name,))
        compiler_note(ctx.procs[name].loc, "the original definition is located here")
        exit(1)
    if name in ctx.consts:
        compiler_error(loc, "redefinition of a constant `%s`" % (name,))
        compiler_note(ctx.consts[name].loc, "the original definition is located here")
        exit(1)




def introduce_proc(ctx, token, rtokens, inline=False):
    """Parse and introduce a procedure definition"""
    if ctx.current_proc is None:
        ctx.stack.append(len(ctx.ops))
        ctx.ops.append(Op(typ=OpType.SKIP_PROC, token=token))
        
        proc_addr = len(ctx.ops)
        ctx.stack.append(proc_addr)
        ctx.ops.append(Op(typ=OpType.PREP_PROC, token=token))
        
        if len(rtokens) == 0:
            compiler_error(token.loc, "expected procedure name but found nothing")
            exit(1)
        
        token = rtokens.pop()
        if token.typ != TokenType.TOKEN_WORD:
            compiler_error(token.loc, "expected procedure name")
            exit(1)
        
        proc_name = token.value
        check_name_redefinition(ctx, proc_name, token.loc)
        
        ctx.procs[proc_name] = Proc(
            addr=proc_addr,
            loc=token.loc,
            local_memories={},
            local_memory_capacity=0,
            inline=inline,
            body_size=0,
        )
        ctx.current_proc = ctx.procs[proc_name]
        while True:
            if len(rtokens) == 0:
                compiler_error(token.loc, "expected `in` to start the procedure body")
                exit(1)
            sig_token = rtokens.pop()
            if sig_token.value == Keyword.IN:
                break
    else:
        compiler_error(token.loc, "nested procedures not allowed")
        exit(1)


def parse_program_from_tokens(ctx, tokens, include_paths=None, included=0):
    """Parse tokens into operations"""
    if include_paths is None:
        include_paths = []
    
    rtokens = list(reversed(tokens))
    
    while len(rtokens) > 0:
        token = rtokens.pop()
        assert len(TokenType) == 6, "Exhaustive token handling in parse_program_from_tokens"
        
        if token.typ == TokenType.TOKEN_WORD:
            if token.value in INTRINSIC_BY_NAMES:
                ctx.ops.append(
                    Op(
                        typ=OpType.INTRINSIC,
                        token=token,
                        operand=INTRINSIC_BY_NAMES[token.value],
                    )
                )
            elif ctx.current_proc is not None and token.value in ctx.current_proc.local_memories:
                ctx.ops.append(
                    Op(
                        typ=OpType.PUSH_LOCAL_MEM,
                        token=token,
                        operand=ctx.current_proc.local_memories[token.value].offset,
                    )
                )
            elif token.value in ctx.memories:
                ctx.ops.append(
                    Op(
                        typ=OpType.PUSH_GLOBAL_MEM,
                        token=token,
                        operand=ctx.memories[token.value].offset,
                    )
                )
            elif token.value in ctx.procs:
                proc = ctx.procs[token.value]
                if proc.inline:
                    proc_ip = proc.addr
                    assert ctx.ops[proc_ip].typ == OpType.PREP_PROC
                    proc_ip += 1
                    ctx.ops.append(Op(typ=OpType.INLINED, token=token, operand=proc.addr))
                    while ctx.ops[proc_ip].typ != OpType.RET:
                        ctx.ops.append(ctx.ops[proc_ip])
                        proc_ip += 1
                else:
                    ctx.ops.append(Op(typ=OpType.CALL, token=token, operand=proc.addr))
            elif token.value in ctx.consts:
                const = ctx.consts[token.value]
                if const.typ == DataType.INT:
                    ctx.ops.append(Op(typ=OpType.PUSH_INT, token=token, operand=const.value))
                elif const.typ == DataType.BOOL:
                    ctx.ops.append(Op(typ=OpType.PUSH_BOOL, token=token, operand=const.value))
                elif const.typ == DataType.PTR:
                    ctx.ops.append(Op(typ=OpType.PUSH_PTR, token=token, operand=const.value))
            else:
                compiler_error(token.loc, "unknown word `%s`" % token.value)
                exit(1)
        
        elif token.typ == TokenType.TOKEN_INT:
            ctx.ops.append(Op(typ=OpType.PUSH_INT, operand=token.value, token=token))
        
        elif token.typ == TokenType.TOKEN_STR:
            ctx.ops.append(Op(typ=OpType.PUSH_STR, operand=token.value, token=token))
        
        elif token.typ == TokenType.TOKEN_CSTR:
            ctx.ops.append(Op(typ=OpType.PUSH_CSTR, operand=token.value, token=token))
        
        elif token.typ == TokenType.TOKEN_CHAR:
            ctx.ops.append(Op(typ=OpType.PUSH_INT, operand=token.value, token=token))
        
        elif token.typ == TokenType.TOKEN_KEYWORD:
            assert len(Keyword) == 17, "Exhaustive keywords handling in parse_program_from_tokens()"
            
            if token.value == Keyword.OP_IF:
                ctx.stack.append(len(ctx.ops))
                ctx.ops.append(Op(typ=OpType.IF, token=token))
            elif token.value == Keyword.OP_IFSTAR:
                if len(ctx.stack) == 0 :
                    compiler_error(token.loc, "if* can only come after else")
                    exit(1)
                else_ip = ctx.stack[-1]
                if ctx.ops[else_ip].typ != OpType.ELSE:
                    compiler_error(ctx.ops[else_ip].token.loc, "if* can only come after else")
                    exit(1)
                ctx.stack.append(len(ctx.ops))
                ctx.ops.append(Op(typ=OpType.IFSTAR, token=token))
            elif token.value == Keyword.OP_ELSE:
                if len(ctx.stack) == 0:
                    compiler_error(token.loc, "`else` can only come after `if`")
                    exit(1)
                
                if_ip = ctx.stack.pop()
                if ctx.ops[if_ip].typ == OpType.IF:
                    ctx.ops[if_ip].operand = len(ctx.ops) + 1
                    ctx.stack.append(len(ctx.ops))
                    ctx.ops.append(Op(typ=OpType.ELSE, token=token))
                elif ctx.ops[if_ip].typ == OpType.IFSTAR:
                    else_before_ifstar_ip = (
                        None if len(ctx.stack) == 0 else ctx.stack.pop()
                    )
                    ctx.ops[if_ip].operand = len(ctx.ops) + 1
                    ctx.ops[else_before_ifstar_ip].operand = len(ctx.ops)

                    ctx.stack.append(len(ctx.ops))
                    ctx.ops.append(Op(typ=OpType.ELSE, token=token))
                else:
                    compiler_error(token.loc, "`else` can only come after `if`")
                    exit(1)
            

            elif token.value == Keyword.OP_WHILE:
                ctx.stack.append(len(ctx.ops))
                ctx.ops.append(Op(typ=OpType.WHILE, token=token))
            
            elif token.value == Keyword.OP_DO:
                if len(ctx.stack) == 0:
                    compiler_error(token.loc, "`do` not preceded by `while`")
                    exit(1)
                while_ip = ctx.stack.pop()
                if ctx.ops[while_ip].typ != OpType.WHILE:
                    compiler_error(token.loc, "do is not preceded by while")
                    exit(1)
                ctx.stack.append(len(ctx.ops))
                ctx.ops.append(Op(typ=OpType.DO, token=token, operand=while_ip))

            elif token.value == Keyword.END:
                block_ip = ctx.stack.pop()

                if ctx.ops[block_ip].typ == OpType.ELSE:
                    ctx.ops[block_ip].operand = len(ctx.ops)
                    ctx.ops.append(
                        Op(typ=OpType.END, token=token, operand=len(ctx.ops) + 1)
                    )
                elif ctx.ops[block_ip].typ == OpType.DO:
                    assert ctx.ops[block_ip].operand is not None
                    while_ip = ctx.ops[block_ip].operand
                    assert isinstance(while_ip, OpAddr)

                    if ctx.ops[while_ip].typ != OpType.WHILE:
                        compiler_error(
                            ctx.ops[while_ip].token.loc,
                            "`end` can only close `do` blocks that are preceded by `while`",
                        )
                        exit(1)

                    ctx.ops.append(Op(typ=OpType.END, token=token, operand=while_ip))
                    ctx.ops[block_ip].operand = len(ctx.ops)
                elif ctx.ops[block_ip].typ == OpType.PREP_PROC:
                    assert ctx.current_proc is not None
                    ctx.ops[block_ip].operand = ctx.current_proc.local_memory_capacity
                    block_ip = ctx.stack.pop()
                    assert ctx.ops[block_ip].typ == OpType.SKIP_PROC
                    ctx.current_proc.body_size = len(ctx.ops) - ctx.current_proc.addr
                    ctx.ops.append(
                        Op(
                            typ=OpType.RET,
                            token=token,
                            operand=ctx.current_proc.local_memory_capacity,
                        )
                    )
                    ctx.ops[block_ip].operand = len(ctx.ops)
                    ctx.current_proc = None
                elif ctx.ops[block_ip].typ == OpType.IFSTAR:
                    else_before_ifstar_ip = (
                        None if len(ctx.stack) == 0 else ctx.stack.pop()
                    )
                    assert (
                        else_before_ifstar_ip is not None
                        and ctx.ops[else_before_ifstar_ip].typ == OpType.ELSE
                    ), (
                        "At this point we should've already checked that `if*` comes after `else`. Otherwise this is a compiler bug."
                    )

                    ctx.ops[block_ip].operand = len(ctx.ops)
                    ctx.ops[else_before_ifstar_ip].operand = len(ctx.ops)
                    ctx.ops.append(
                        Op(typ=OpType.END, token=token, operand=len(ctx.ops) + 1)
                    )
                elif ctx.ops[block_ip].typ == OpType.IF:
                    ctx.ops[block_ip].operand = len(ctx.ops)
                    ctx.ops.append(
                        Op(typ=OpType.END, token=token, operand=len(ctx.ops) + 1)
                    )
                else:
                    compiler_error(
                        token.loc,
                        "`end` can only close `if`, `if*`, `else`, `do`, or `proc` blocks",
                    )
                    compiler_note(
                        ctx.ops[block_ip].token.loc,
                        f"found `{ctx.ops[block_ip].token.text}` instead",
                    )
                    exit(1)

            
            elif token.value == Keyword.OP_CONST:
                if len(rtokens) == 0:
                    compiler_error(token.loc, "expected const name")
                    exit(1)
                
                token = rtokens.pop()
                if token.typ != TokenType.TOKEN_WORD:
                    compiler_error(token.loc, "expected const name")
                    exit(1)
                
                const_name = token.value
                const_loc = token.loc
                check_name_redefinition(ctx, const_name, const_loc)
                
                const_value, const_typ = eval_const_value(ctx, rtokens)
                ctx.consts[const_name] = Const(value=const_value, loc=const_loc, typ=const_typ)
            
            elif token.value == Keyword.MEMORY:
                if len(rtokens) == 0:
                    compiler_error(token.loc, "expected memory name")
                    exit(1)
                
                token = rtokens.pop()
                if token.typ != TokenType.TOKEN_WORD:
                    compiler_error(token.loc, "expected memory name")
                    exit(1)
                
                memory_name = token.value
                memory_loc = token.loc
                memory_size, memory_size_type = eval_const_value(ctx, rtokens)
                
                if memory_size_type != DataType.INT:
                    compiler_error(token.loc, "memory size must be int")
                    exit(1)
                
                check_name_redefinition(ctx, memory_name, memory_loc)
                
                if ctx.current_proc is None:
                    ctx.memories[memory_name] = Memory(offset=ctx.memory_capacity, loc=memory_loc)
                    ctx.memory_capacity += memory_size
                else:
                    ctx.current_proc.local_memories[memory_name] = Memory(
                        offset=ctx.current_proc.local_memory_capacity, loc=memory_loc
                    )
                    ctx.current_proc.local_memory_capacity += memory_size
            
            elif token.value == Keyword.OP_PROC:
                introduce_proc(ctx, token, rtokens, inline=False)
            
            elif token.value == Keyword.INLINE:
                if len(rtokens) == 0:
                    compiler_error(token.loc, "expected `proc` after `inline`")
                    exit(1)
                
                token = rtokens.pop()
                if token.value != Keyword.OP_PROC:
                    compiler_error(token.loc, "expected `proc` after `inline`")
                    exit(1)
                
                introduce_proc(ctx, token, rtokens, inline=True)
            
            elif token.value == Keyword.INCLUDE:
                if len(rtokens) == 0:
                    compiler_error(token.loc, "expected include path")
                    exit(1)
                
                token = rtokens.pop()
                if token.typ != TokenType.TOKEN_STR:
                    compiler_error(token.loc, "expected include path string")
                    exit(1)
                
                include_path = token.value
                include_full_path = path.join(path.dirname(include_path), include_path) if include_paths else include_path
                
                try:
                    parse_program_from_file(ctx, include_full_path, include_paths, included + 1)
                except FileNotFoundError:
                    compiler_error(token.loc, "include file not found `%s`" % include_path)
                    exit(1)
            
            elif token.value == Keyword.OP_ASSERT:
                if len(rtokens) == 0:
                    compiler_error(token.loc, "expected assert message")
                    exit(1)
                
                token = rtokens.pop()
                if token.typ != TokenType.TOKEN_STR:
                    compiler_error(token.loc, "expected assert message string")
                    exit(1)
                
                assert_message = token.value
                assert_value, assert_typ = eval_const_value(ctx, rtokens)
                
                if assert_typ != DataType.BOOL:
                    compiler_error(token.loc, "assertion must be bool")
                    exit(1)
                
                if assert_value == 0:
                    compiler_error(token.loc, "Static Assertion Failed: %s" % assert_message)
                    exit(1)
            
            elif token.value in [Keyword.OP_OFFSET, Keyword.OP_RESET]:
                compiler_error(token.loc, "keyword `%s` only valid in compile time context" % token.text)
                exit(1)
            
            elif token.value in [Keyword.IN, Keyword.BIKESHEDDER]:
                compiler_error(token.loc, "unexpected keyword `%s`" % token.text)
                exit(1)
            
            elif token.value == Keyword.HERE:
                value = "%s:%d:%d" % token.loc
                ctx.ops.append(Op(typ=OpType.PUSH_STR, operand=value, token=token))
    
    if len(ctx.stack) > 0:
        compiler_error(ctx.ops[ctx.stack.pop()].token.loc, "unclosed block")
        exit(1)


def parse_program_from_file(ctx, file_path, include_paths=None, included=0):
    """Parse a source file"""
    if include_paths is None:
        include_paths = []
    
    parse_program_from_tokens(ctx, lex_file(file_path), include_paths, included)
