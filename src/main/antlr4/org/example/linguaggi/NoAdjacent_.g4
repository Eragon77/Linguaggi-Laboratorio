grammar NoAdjacent_;

/* Parser Rules */

start : s w v B EOF ;

s : BIT ;
v : BIT ;

w : (BIT | UNDERSCORE BIT)* UNDERSCORE? ;

/* Lexer Rules */

fragment ZERO : '0' ;
fragment ONE  : '1' ;

BIT : ZERO | ONE ;

UNDERSCORE : '_' ;
B : 'b' ;

WS : [ \t\r\n]+ -> skip ;