
clc
clear

%function
f = @(x) x^2; 
%deriving function 
df_exact = @(x) 2*x; 
% the first x point
x = 2; 
% time step 
h = 0.1; 
% calculate the difference
% forward difference
forward_diff = (f(x+h) - f(x)) / h;
% backward difference
backward_diff = (f(x) - f(x-h)) / h;
% central difference
central_diff = (f(x+h) - f(x-h)) / (2*h);