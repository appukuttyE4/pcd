%{
#include<stdio.h>
#include "y.tab.h"
extern int yylval;
%}

%%
[ \t\n]       ;  // Ignore whitespace and newline
[0-9]+        { yylval = atoi(yytext); return NUMBER; }
"<"           { return LESS; }
">"           { return GREATER; }
"<="          { return LESSEQUAL; }
">="          { return GREATEREQUAL; }
"=="          { return EQUAL; }
"!="          { return NOTEQUAL; }
.             { return yytext[0]; }
%%

int yywrap() {
    return 1;
}