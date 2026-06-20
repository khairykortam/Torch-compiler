import sys

iota_counter=0
def iota(reset=False):
    global iota_counter
    if reset:
        iota_counter =0
    result = iota_counter
    iota_counter +=1
    return result

OP_PUSH=iota()
OP_PLUS=iota()
OP_MINUS=iota()
OP_DUMP=iota()
COUNT_OPS=iota()

print(OP_DUMP)

def push(x):
    return(OP_PUSH,x)

def plus():
    return(OP_PLUS,)
def minus():
    return (OP_MINUS,)

def dump():
    return (OP_DUMP,)

def simulate(program):
    stack = []
    for op in program:
        assert COUNT_OPS == 4, "Exhaustive handling of operations"
        if op[0] == OP_PUSH:
            stack.append(op[1])
        elif op[0] == OP_PLUS:
            a = stack.pop()
            b = stack.pop()
            stack.append(a+b)
        elif op[0] == OP_MINUS:
            a = stack.pop()
            b = stack.pop()
            stack.append(b-a)
        elif op[0] == OP_DUMP:
            a = stack.pop()
            print(a)
        else:
            assert False, "unreachable"

def compile(program):
    assert False, "No implementation provided"

     

program = [push(34),push(35),plus(),dump(),push(500), push(80), minus(), push(420), dump()]

if __name__ == '__main__':
    if len(sys.argv) < 2:
        print("USAGE: TORCH <SUBCOMMAND> [ARGS]")
        print("SUBCOMMANDS:")
        print("    sim    Simulate the program")
        print("    com    Compiler the program")
        exit(1)
