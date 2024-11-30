
clear 
close
x(1) = 0.1;
Lgb = 4 ;
Lts = 38 ;
Lgs = 24;
Wb = 1.663e6 ;
Ws =0.23e6 ;
Tb = 5.3e6  ;
Ts = 1.125e6; 

for i = 1 : 10
    f = Lgb * Wb - Lgb*Tb - Lgs*Ws + Lgs*Ts*cos(x(i)) - Lts*Ts*sin(x(i)) ;
    df = -Lgs*Ts*sin(x(i)) - Lts*Ts*cos(x(i)) ;
    x(i+1) = x(i) - f / df;
    y(i) = (180 * x(i)) / (2*pi) ; 

end

disp(y');
plot(y);
grid on ;


