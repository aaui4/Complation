%{
#include <stdio.h>
int yylex();
int yyerror(char *s);
%}

%token mc var ver pv
%start s

%%
s : mc liste_var   pv     { printf("Declaration correcte \n"); }
  ;

liste_var
  : decl
  | liste_var ver decl
  ;

decl
  : var
  
  ;
%%

int main()
{
    yyparse();
    return 0;
}

int yyerror(char *s)
{
    printf("Erreur syntaxique \n");
    return 0;
}