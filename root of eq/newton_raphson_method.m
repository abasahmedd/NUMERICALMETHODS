

x(1) = 0.1;
for i = 1 : 10 
    %constant
    f = exp(-x) - x ;
    df = -exp(-x) - 1 ; 

    %constant
    x(i+1) = x(i) -(f(i) / df(i)) ; 
    %error check
    Ea = abs(x(i+1) - x(i) / x(i+1) ) * 100 ;
end

t = table(i,x) ;
disp(t);

