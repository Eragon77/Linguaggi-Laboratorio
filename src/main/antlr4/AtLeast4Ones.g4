grammar AtLeast4Ones;

/*Parser*/
w : zero_or_more_0s '1'
        zero_or_more_0s '1'
        zero_or_more_0s '1'
        zero_or_more_0s '1'
        any_combination EOF;

any_combination : (ZERO | ONE)* ;
zero_or_more_0s : ZERO* ;


/* Lexer Rules */
ZERO  : '0' ;
ONE   : '1' ;
WS    : [ \t\r\n]+ -> skip ;

