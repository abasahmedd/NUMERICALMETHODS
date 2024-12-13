
clear
%type of FORMAT
format short 
%constant Parameters
d = 0.01 ;
x(1) = 1 ; 
%variable Functions
f = @(x) x^3 - sin(x) - 5 ;

%tolerance paramete
tolerance = 1e-1 ; 

%for loop
for i = 1 :100
    %general function (modified)
    x(i+1) = x(i) - (d*x(i)*f(x(i))) / (f(x(i)+d*x(i))-(f(x(i))));
    %error function
    ErrorF(i) = abs((x(i+1) - x(i)) / x(i+1)) * 100 ;
    %tolerance
    if ErrorF(i) < tolerance 
        break;
    end 

end
disp(x');
plot(ErrorF);
grid on ;
