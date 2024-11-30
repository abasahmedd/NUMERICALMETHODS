clc 
clear
%type of FORMAT
format short 

%variable Parameters
a = 0.43 ; 
b = 1.4 ; 
%constant Parameters
d = 0.01 ;
x(1) = 2 ; 
%variable Functions
f = @(x) (a/sqrt(1-x^2)) - ((2/b*(x^2))*(((1+(b-1/2)*x^2))/1+(b-1/2))^(b/b-1) - 1 );

%tolerance parameter
epsn = 1e-6 ; 

%for loop
for i = 1 :100
    %general function (modified)
    x(i+1) = x(i) - (d*x(i)*f(x(i))) / (f(x(i)+d*x(i))-(f(x(i))));
    %error function
    epsa(i) = abs((x(i+1) - x(i)) / x(i+1)) * 100 ;
    %tolerance
    if epsa(i) < epsn 
        break;
    end
end
%convert from img to rel
z = real(x)
%results
disp(z');
plot(epsa);


