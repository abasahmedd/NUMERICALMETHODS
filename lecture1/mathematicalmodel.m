clc
clear

m = 68.1;
c = 12.5; 
g = 9.81;
%زمن
t = 0 : 1 : 20;
v = zeros(1,length(t));
v(1) = 0 ;

for i = 1 : length(t)-1
    v(i+1) = v(i) + ( ( g - (c/m) * v(i) ) * ( t(i+1) - t(i) ) );
end
disp(v);
plot(t,v,'-o');
grid on 