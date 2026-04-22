grammar LDig;

list : PARA (NUMBER (COMMA NUMBER)*)? PARC ;

/* Lexer */
NUMBER : [0-9]+ ;
COMMA  : ',' ;
PARA   : '(' ;
PARC   : ')' ;
WS     : [ \t\r\n]+ -> skip ;