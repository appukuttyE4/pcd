%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

%}

%token ID AND OR NOT LPAREN RPAREN
%left AND
%left OR
%right NOT
%start expression

%%
expression : ID
           | expression AND expression
           | expression OR expression
           | NOT expression
           | LPAREN expression RPAREN

           ;

%%

int main() {
    yyparse();
    printf("Valid");
    return 0;
}

void yyerror() {
    printf("Syntax error");

}