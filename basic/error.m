clc
clear
format long
%lecture1/page26
%error analysis
%example with  McLauren series(series expansion of the e^x function) and error analysis

realvalue = 1.648721271;                                                         %initial x value
x = 0.5 ;
n = 4; 
averagevalue = zeros(1,n);                                                       %average x value
averagevalue(1)=1;
Ea = zeros(1, n - 1);

% McLauren series Method
% e^x = 1 + e^x^3/2 + e^x^3/3 + e^x^4/4 ... + e^x^n/n
averagevalue(1) = 1 ;
for i = 2 : n
    averagevalue(i) = averagevalue(i-1) + (x^(i-1))/factorial(i-1);
end

% e^x = 1 + + 1.5 +1.625 



for i = 2 : n
    Ea(i-1) = abs((averagevalue(i) - averagevalue(i-1)) / averagevalue(i)) * 100;
end


Et = abs((realvalue-averagevalue)/(realvalue))*100 ;



disp(Et');
disp(Ea');