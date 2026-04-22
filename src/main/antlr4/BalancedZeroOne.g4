grammar BalancedZeroOne;


start: (n1 | n2) EOF;

n1: ZERO n1 ONE | /*epsilon*/;
n2: ZERO n2 ONE ONE | /*epsilon*/;



ZERO: '0';
ONE: '1';
WS   : [ \t\r\n]+ -> skip ;