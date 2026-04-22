grammar AbcSum;

start: ruleA EOF;
ruleA: A ruleA C | ruleB ;
ruleB : B ruleB C | ;

/*Parser*/
A: 'a';
B: 'b';
C: 'c';
WS: [ \t\n]->skip;
