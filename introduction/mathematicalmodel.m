clc
clear

m = 68.1;
c = 12.5; 
g = 9.81;

t = 0 : 1 : 20; % t = [1,2,3 .. .. 20]

v = zeros(1,length(t)); % v = [0,0,0 ... 0]

v(1) = 0 ;
% i from 1 to 19 becz the first i is = 0

for i = 1 : length(t)-1

    v(i+1) = v(i) + ( ( g - (c/m) * v(i) ) * ( t(i+1) - t(i) ) );

end

disp(v');
