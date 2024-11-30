clc
clear
format long

Rv = 1.648721271;
x = 0.5 ;
Av = zeros(1,n);
Av(1)=1;
for i = 1 :4
    Av(1) = 1 ;
    Av(i) = Av(i-1) + (x^(i-1))/factorial(i-1);
end
for i = 2:n
    Ea(i-1) = abs((Av(i) - Av(i-1)) / Av(i)) * 100;
end
Et = abs((Rv-Av)/(Rv))*100 ;
Ea(1) = abs((Av(2)-Av(1))/Av(2))*100 ;
Ea(2) = abs((Av(3)-Av(2))/Av(3))*100 ;
Ea(3) = abs((Av(4)-Av(3))/Av(4))*100 ;