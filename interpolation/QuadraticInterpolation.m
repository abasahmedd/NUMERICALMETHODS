clear all
%interpolation 
%quadratic interpolation 
%3 point
x0 =1; x1 = 4 ;x2 =6;
% i need interpolation (f(x)) in this point
x = 2 ;
%for error for true value
ft = log(x) ;
%function
f=@(x) log(x) ;
%parameter
b0 = f(x0) ;
b1 = (f(x1)-f(x0))/(x1-x0) ;
b2 = (( ( f(x2) - f(x1) ) / (x2-x1) ) - b1 ) / (x2-x0) ;
%calc interpolation results
f2 =  b0 + b1(x-x0)+b2(x-x0)*(x-x1) ;
et = abs((ft-f2)/ ft)*100 ; 





