clc
clear
x = [1,2, 3, 4, 5 ,6, 7];
y = [0.5, 2.5, 2 ,4, 3.5, 6 ,5.5];
n = length(x); 
x1 = sum(x);
y1 = sum(y);
xxx = x1/n;
yy = y1/n;
xx = x.*y;
sxy = sum(xx);
x2 = x.^2;
x3 = sum(x2);
ymyf = (y-yy).^2;

a1 = (n*(sxy)-((x1)*(y1)))/(n*(x3)-(x1)^2);
a0 = yy - a1*(xxx);
yf = a0 + a1*(x);
plot(x,y,'bo','MarkerSize', 8 ,'MarkerFaceColor', 'b')
hold on 
plot(x,yf, 'r-', 'LineWidth', 2)
xlabel('X-axis')
ylabel('Y-axis')
title('Linear Regression Plot')
grid on 
