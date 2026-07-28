from common import *
from diagnostics import *


def find_col(line, start, predicate):
    """Find the next column position where predicate is true"""
    while start < len(line) and not predicate(line[start]):
        start += 1
    return start


def unescape_string(s):
    """Unescape string literals (handles \\n, \\t, etc.)"""
    return s.encode("utf-8").decode("unicode_escape").encode("latin-1").decode("utf-8")


def find_string_literal_end(line, start, quote='"'):
    """Find the end of a string literal, handling escape sequences"""
    while start < len(line):
        if line[start] == "\\":
            start += 2
        elif line[start] == quote:
            break
        else:
            start += 1
    return start


def lex_lines(file_path, lines):
    """Tokenize source code line by line"""
    assert len(TokenType) == 6, "Exhaustive handling of token types in lex_lines"
    row = 0
    str_literal_buf = ""
    
    while row < len(lines):
        line = lines[row]
        col = find_col(line, 0, lambda x: not x.isspace())
        col_end = 0
        
        while col < len(line):
            loc = (file_path, row + 1, col + 1)
            
            # Handle string literals
            if line[col] == '"':
                while row < len(lines):
                    start = col
                    if str_literal_buf == "":
                        start += 1
                    else:
                        line = lines[row]
                    col_end = find_string_literal_end(line, start)
                    
                    if col_end >= len(line) or line[col_end] != '"':
                        str_literal_buf += line[start:]
                        row += 1
                        col = 0
                    else:
                        str_literal_buf += line[start:col_end]
                        break
                
                if row >= len(lines):
                    loc = (loc[0], loc[1], loc[2] + len(str_literal_buf))
                    compiler_error(loc, "unclosed string literal")
                    exit(1)
                
                assert line[col_end] == '"'
                col_end += 1
                text_of_token = str_literal_buf
                str_literal_buf = ""
                
                # Check for C-string (ends with 'c')
                if col_end < len(line) and line[col_end] == "c":
                    col_end += 1
                    yield Token(
                        TokenType.TOKEN_CSTR,
                        text_of_token,
                        loc,
                        unescape_string(text_of_token),
                    )
                else:
                    yield Token(
                        TokenType.TOKEN_STR,
                        text_of_token,
                        loc,
                        unescape_string(text_of_token),
                    )
                col = find_col(line, col_end, lambda x: not x.isspace())
            
            # Handle character literals
            elif line[col] == "'":
                col_end = find_string_literal_end(line, col + 1, quote="'")
                if col_end >= len(line) or line[col_end] != "'":
                    compiler_error(
                        (loc[0], loc[1], col_end), "unclosed character literal"
                    )
                    exit(1)
                text_of_token = line[col + 1 : col_end]
                char_bytes = unescape_string(text_of_token).encode("utf-8")
                if len(char_bytes) != 1:
                    compiler_error(
                        loc,
                        "only a single byte is allowed inside of a character literal",
                    )
                    exit(1)
                yield Token(TokenType.TOKEN_CHAR, text_of_token, loc, char_bytes[0])
                col = find_col(line, col_end + 1, lambda x: not x.isspace())
            
            # Handle numbers, keywords, and words
            else:
                col_end = find_col(line, col, lambda x: x.isspace())
                text_of_token = line[col:col_end]

                if text_of_token.endswith(";"):
                    text_of_token = text_of_token[:-1]
                if text_of_token == "":
                    col = find_col(line, col_end, lambda x: not x.isspace())
                    continue
                try:
                    yield Token(TokenType.TOKEN_INT, text_of_token, loc, int(text_of_token))
                except ValueError:
                    if text_of_token in KEYWORD_BY_NAMES:
                        yield Token(
                            TokenType.TOKEN_KEYWORD,
                            text_of_token,
                            loc,
                            KEYWORD_BY_NAMES[text_of_token],
                        )
                    else:
                        if text_of_token.startswith("//"):
                            break
                        yield Token(TokenType.TOKEN_WORD, text_of_token, loc, text_of_token)
                col = find_col(line, col_end, lambda x: not x.isspace())
        
        row += 1


def lex_file(file_path):
    """Lex an entire file and return all tokens"""
    with open(file_path, "r", encoding="utf-8") as f:
        return [token for token in lex_lines(file_path, f.readlines())]
    
