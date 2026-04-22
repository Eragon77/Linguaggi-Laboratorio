grammar DigitList;

/* Parser rules */
list    : PARA (element (COMMA element)*)? PARC ;
element : NUMBER | list ;

/* Lexer rules */
NUMBER : [0-9]+ ;
COMMA  : ',' ;
PARA   : '(' ;
PARC   : ')' ;
WS : [ \t\r\n]+ -> skip ;