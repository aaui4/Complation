%{
#include "y.tab.h"
%}

%%
"int"                  { return mc; }
bool                   { return BOOL;}
false                  { return FALSE;}
[ \t\n];               /* تجاهل الفراغات */
","                    { return ver; }
";"                    { return pv; }
=                      { return EQUAL;}
[a-zA-Z][a-zA-Z0-9]*   { return var; }
.                      { printf("Symbole inconnu: %s\n", yytext); }
%%

int yywrap()
{
    return 1;
}
