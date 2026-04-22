grammar LStarDig;

list    : PARA elements? PARC ;

elements : element (COMMA element)* ;

element  : NUMBER | list ;

/* Lexer*/
NUMBER : [0-9]+ ;
COMMA  : ',' ;
PARA   : '(' ;
PARC   : ')' ;
WS     : [ \t\r\n]+ -> skip ;