%{
#include <stdio.h>
extern int yylex();
extern int yylineno;
extern char* yytext;

%}

%token NUMBER
%token LESS GREATER LESSEQUAL GREATEREQUAL EQUAL NOTEQUAL
%left LESS GREATER LESSEQUAL GREATEREQUAL EQUAL NOTEQUAL
%start expression

%%
expression : expression LESS expression
           | expression GREATER expression
           | expression LESSEQUAL expression
           | expression GREATEREQUAL expression
           | expression EQUAL expression
           | expression NOTEQUAL expression
           | NUMBER
           ;

%%

int main() {
    yyparse();
    printf("Valid");
    return 0;
}

void yyerror()
{
   printf("Invalid");
}