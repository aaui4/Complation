%{
#include "tp2.tab.h"
#include <stdio.h>
%}

%%
"int"                  { return mc; }
[a-zA-Z][a-zA-Z0-9]*   { return var; }
","                    { return ver; }
";"                    { return pv; }
[ \t\n]+               ;   /* تجاهل الفراغات */
.                      { printf("Symbole inconnu: %s\n", yytext); }
%%

int yywrap()
{
    return 1;
}