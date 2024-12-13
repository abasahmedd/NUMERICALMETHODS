


f =@(x) ((667.38/x)*(1-(exp(-0.146843*(x))))) - 40   ;

xl = 12 ; 
xu = 16 ; 
xr(1) = xl ; 
ea(1) = 100 ;


for i = 1 :100 
    if
        f(xl)*f(xu) <  0 
        xr(i+1) = x(u) - (f(xu)*(xl-xu)/(f(xl)-f(xu))) ;
        if 

