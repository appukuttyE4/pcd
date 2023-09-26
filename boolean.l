%{
#include<stdio.h>
#include "y.tab.h"
extern yylval;
%}

%%
[ \t\n]       ;  // Ignore whitespace and newline

"and"         { return AND; }
"or"          { return OR; }
"not"         { return NOT; }
"("           { return LPAREN; }
")"           { return RPAREN; }
[a-zA-Z]+     { return ID;}
[\t]+         ;

.             { return yytext[0];}

%%

int yywrap() {
    return 1;
}