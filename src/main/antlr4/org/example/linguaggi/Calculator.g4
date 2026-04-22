grammar Calculator;
// PARSER
exp : NAT                           # nat
    | LPAR exp ADD exp RPAR         # add
    | LPAR exp MUL exp RPAR         # mul
    | LPAR exp DIV exp RPAR         # div
    | LPAR exp MOD exp RPAR         # mod
    | SUB exp                       # neg
    ;

// LEXER
LPAR : '(' ;
MUL  : '*' ;
DIV  : '/';
RPAR : ')' ;
SUB  : '-' ;
MOD  : '%';
NAT  : '0' | [1-9][0-9]* ;
ADD  : '+' ;
WS   : [ \t\r\n]+ -> skip ;