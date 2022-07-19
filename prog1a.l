%{
#include<stdio.h>
int v=0,op=0,id=0,flag=0;
%}

%%
[0-9]* {id++;printf("\n Identifier:\n");ECHO;}
[\+\-\*\/\=] {op++;printf("\n Operartor:\n");ECHO;}
"(" {v++;}
")" {v--;}
";" {flag=1;}
.|\n {return 0;}
%%

main()
{
printf("Enter the expression");
yylex();
if((op+1) ==id && v==0 && flag==0)
printf("\n Expression is Valid\n");
else
printf("\n Expression is Invalid\n");
}


