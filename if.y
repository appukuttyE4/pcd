%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

%}

%token ID
%token IF ELSE LPAREN RPAREN LBRACE RBRACE IDENTIFIER
%start program

%%
program : statement
        | IF LPAREN expression RPAREN LBRACE program RBRACE
        | IF LPAREN expression RPAREN LBRACE program RBRACE ELSE LBRACE program RBRACE
        ;

statement : ID
          ;

expression : ID
           ;

%%

int main() {
    yyparse();
    printf("Syntax correct");
    return 0;
}

void yyerror() {
    printf("Syntax error");

}