

x1 = -10 : 0.5 : 10 ;
x2_1 = -(3/2)*x1 + 9 ;
x2_2 = (1/2)*x1 + 1 ;

disp(x2_1);
disp(x2_2);

figure;
plot(x2_1)
hold on
plot(x2_2)
grid on 