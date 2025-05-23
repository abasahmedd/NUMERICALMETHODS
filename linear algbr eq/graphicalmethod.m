x1 = -10:0.5:10;  

x2_1 = (18 - 3*x1) / 2;      
x2_2 = (2 + x1) / 2; 

figure;  
hold on;  
plot(x1, x2_1, 'r', 'DisplayName', '3x_1 + 2x_2 = 18');  
plot(x1, x2_2, 'b', 'DisplayName', '-x_1 + 2x_2 = 2');  

xlabel('x1');  
ylabel('x2');  

legend show;  
grid on;  
hold off;  

A = [3 2; -1 2];  
B = [18; 2];  
solution = A\B;   
 
disp(['x1 = ', num2str(solution(1))]);  
disp(['x2 = ', num2str(solution(2))]);
