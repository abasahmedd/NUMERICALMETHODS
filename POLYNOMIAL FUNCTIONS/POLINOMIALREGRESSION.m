clc
clear
x = [0, 1, 2, 3, 4, 5]'; 
y = [2.1, 7.7, 13.6, 27.2, 40.9, 61.1]'; 
m = 2; 
Xm= zeros(length(x), m+1); 

for i = 0:m
    Xm(:, i+1) = x.^i; 
end
a = (Xm' * Xm) \ (Xm' * y);  
y_pred = Xm * a; 
scatter(x, y, 'filled'); 
plot(x, y_pred, 'r', 'LineWidth', 2); 
sum_x = sum(x);
sum_y = sum(y);
sum_x2 = sum(x.^2);
sum_x3 = sum(x.^3);
sum_x4 = sum(x.^4);
sum_xy = sum(x .* y);
sum_x2y = sum((x.^2) .* y);

