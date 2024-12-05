clear all  
clc

format short

%variable Parameters
x(1) = 0;
x(2) = 1;

%%you  can use this function and type you own function here%%
f=@(x) 'HERE' ;

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


