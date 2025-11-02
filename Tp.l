
%{
#include <stdio.h>
%}
%%
[-+/*]              { printf("Operateur\n"); }
F+                  { printf("Une suite de F\n"); }
(ab){2,}            { printf("Deux ab ou plus\n"); }
[A-Za-z0-9]{3}      { printf("Mot de longueur 3\n"); }
[0-9]+              { printf("Entier\n"); }
[0-9]*\.[0-9]+      { printf("Reel\n"); }
[A-Za-z][A-Za-z0-9] { printf("Variable\n"); }
\'([^']|\'\')*\'           { printf("C'est une chaine pascal \n"); }
\"([^"])*\"          { printf("Chaine C\n"); }
[a-z]+[A-Z0-9]*[a-z0-9]* { printf("Identificateur special\n"); }
%%
int yywrap(void){
    return 1;
}

int main() {
    printf("Entre votre text:");
    yylex();
    return 0;
}
