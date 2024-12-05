%LINEAR ALGEBRAIC EQUATIONS
%SIMPLE GAUSS ELIMINATION
clc;clear;

n = size(a,1);
for k = 1 : n-1 
    for i = k+1 : n
        m(i,k) = a(i,k) / a(k,k);
        for j = k+1 : n
            a(i,j) = a(i,j) - m(i,k)*a(k,j);
        end
        c(i) = c(i) - m(i,k)*c(k);
    end
end

for k = n : -1 : 1
    sum = 0 ;
    for j = k+1 : n
        sum = sum + a(k,j) * x(j);
    end
    x(k) = (c(k)-sum) / a(k,k);
end