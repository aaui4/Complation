
%{
#include <stdio.h>
%}

%token INT FLOAT CHAR IDENTIFIER

%%

start : declaration
      ;

declaration : type IDENTIFIER ';'
            {
                printf("Declaration: variable '%s'\n", yytext);
            }
            ;

type : INT
     | FLOAT
     | CHAR
     ;

%%

int main() {
    yyparse();
    return 0;
}

int yyerror() {
    printf("Syntax error\n");
    return 0;
}
