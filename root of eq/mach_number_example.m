clear all  
clc

format short

%variable Parameters
x(1) = 2;
x(2) = 3;
b = 1.4;
a = 0.43 ;
%variable Functions
f=@(x) (a/sqrt(1-x^2)) - ((2/b*(x^2))*(((1+(b-1/2)*x^2))/1+(b-1/2))^(b/b-1) - 1 );

%tolerance parameter
epsn = 1e-5;
%for loop
for i = 2 : 100
     %general function (secanr)
    x(i+1) = x(i) - (f(x(i))*(x(i)-x(i-1))) / (f(x(i))-(f(x(i-1))))
    %error function
    epsa(i) = abs((x(i+1) - x(i)) / x(i+1)) * 100 ;
    %tolerance
    if epsa(i) < epsn 
        break;
    end

end
z = real(x)
disp(z');
plot(epsa);


