import sys
from common import *

def loc_str(loc):
    return "%s:%d:%d" % loc

def compiler_diagnostic(loc, tag, mssg):
    print("%s:%d:%d: %s: %s" % (loc + (tag, mssg)), file=sys.stderr)

def compiler_error(loc, messg):
    compiler_diagnostic(loc, "ERR", messg)

def compiler_note(loc, mssg):
        compiler_diagnostic(loc, "NOTE", mssg)

def not_enough_arguments(op):
    assert len(OpType) == 19, "exhuastive handling of Op types in not_enough_arguments"

    if op.typ == OpType.INTRINSIC:
        assert isinstance(op.operand, Intrinsic)
        compiler_error(op.token.loc, "notu neough arguments for intrinsic")
    elif op.typ == OpType.DO:
        compiler_error(op.token.loc, "not enough arugemnts for do-block")
    else: 
        assert False, "unsupported type of operation"