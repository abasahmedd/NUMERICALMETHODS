m = 3;
alp = 12 * pi / 180;
y = 1.4;
x(1) = 0.1 ;

f = @(x) tan(alp) - (2 * cos(m^2 * sin(x - 1)^2)) / (m^2 * (y + cos(2 * x) + 2)) ;

a = f(1) * 180 /pi ;

disp(a);
