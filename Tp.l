%{
#include "y.tab.h"
%}

ID      [a-zA-Z_][a-zA-Z0-9_]*

%%

"int"           return INT;
"float"         return FLOAT;
"char"          return CHAR;

{ID}            return IDENTIFIER;

";"             return ';';

[ \t\n]+        ;
.               ;

%%
