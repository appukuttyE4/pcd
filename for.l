%{
#include<stdio.h>
#include "y.tab.h"
extern int yylval;
%}

%%
[ \t\n]       ;  // Ignore whitespace and newline

"for"         { return FOR; }
"("           { return LPAREN; }
")"           { return RPAREN; }
";"           { return SEMICOLON; }
"{"           { return LBRACE; }
"}"           { return RBRACE; }
[a-zA-Z0-9]+  { return ID; }


%%

int yywrap() {
    return 1;
}