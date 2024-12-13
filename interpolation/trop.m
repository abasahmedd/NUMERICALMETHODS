%trapezoidelRule
clear all ; clc;
%initial Value
Ig = 1.64053 ;
a = 0 ; b = 0.8 ;
%function

f=@(x)  0.2+25*x -200*x^2  + 675*x^3 - 900*x^4 + 400*x^5 ;
N = 100;

for n = 1 : N

    h = (b-a)/n;
    sumx = 0 ;
    for i = 1 : n - 1
        x1 = a + i*h ; 
        sumx = sumx + f(x1) ;
    end

    I(n) = (h/2) * ( f(a) + 2*sumx + f(b));

    et(n) = abs((I(n)-Ig)/Ig)*100;
end
xa = [1:N];
plot(xa,et)
grid on 
