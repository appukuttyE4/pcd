%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

%}

%token ID
%token FOR LPAREN RPAREN SEMICOLON LBRACE RBRACE IDENTIFIER NUM
%start program

%%
program : statement
        | FOR LPAREN expression SEMICOLON expression SEMICOLON expression RPAREN LBRACE program RBRACE
        ;

statement : ID
          ;

expression : ID
           ;

%%

int main() {
    yyparse();
    printf("Syntax Correct");
    return 0;
}

void yyerror() {
    printf("Syntax error");
}