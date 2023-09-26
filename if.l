%{
#include<stdio.h>
#include "y.tab.h"
extern yylval;
%}

%%
[ \t\n]       ;  // Ignore whitespace and newline

"if"          { return IF; }
"else"        { return ELSE; }
"("           { return LPAREN; }
")"           { return RPAREN; }
"{"           { return LBRACE; }
"}"           { return RBRACE; }
[a-zA-Z0-9]+  { return ID; }
%%

int yywrap() {
    return 1;
}