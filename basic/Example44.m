clc
clear
%%smple example for how to create the function

h = 0.5 ;
xfw = 0.5 ;

x = xfw + h ;

f = @(x) -0.1*x^4 -0.15*x^3 -0.5*x^2 -0.25*x + 1.2 ;

df = @(x) -0.4*x^3 -0.45*x^2 -x -0.25 ;

value1 = f(x);
value2 = df(x);

disp(value1);
disp(value2);
