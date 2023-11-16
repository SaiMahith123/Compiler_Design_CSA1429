	%{
int cons = 0;
%}
digit [0-9]
%%
{digit}+"."{digit}+ { cons++; printf("%s is a floating-point constant\n", yytext); }
{digit}+ { cons++; printf("%s is an integer constant\n", yytext); }
.|\n { }
%%
int yywrap() {
}
int main() {
    printf("Enter the code:");
    yylex();
    printf("Number of Constants: %d\n", cons);
    return 0;
}	
