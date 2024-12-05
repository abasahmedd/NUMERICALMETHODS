clc
clear 

a  =12 ;
b = 16 ; 
n = 0 ;
acc = 1e-20 ; 
f =@(x) ((667.38/x)*(1-(exp(-0.146843*(x))))) - 40   ;

if f(a)*f(b) > 0.0 
    disp('There is no root in the given interval')
else
    c = (a+b)/2 ; 
    t = abs(b-a);
    while t > acc 
        n = n + 1 ;
        if f(a)*f(c) < 0.0
            b = c ;
        else
            a = c ;
        end
        c = (a+b)/2 ;
        t = abs(b-a);
        disp(c')
    end
end