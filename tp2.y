%{
#include <stdio.h>
int yylex();
int yyerror(char *A);
%}

%token mc var ver pv BOOL FALSE EQUAL
%start A

%%
A : mc liste_var   pv     { printf("Declaration correcte \n"); }
  ;

liste_var: declaration
  | liste_var ver declaration
  ;

declaration : var
  | bool_declaration
  ;
bool_declaration:
BOOL var EQUAL FALSE pv
;

%%

int main()
{
printf("Enter your declaration:\n");
    yyparse();
    getchar();
    return 0;
}

int yyerror(char *A)
{
    printf("Erreur syntaxique \n");
    return 0;
}
