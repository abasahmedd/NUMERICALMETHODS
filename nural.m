

x = -1:0.1:1;   
y = x.^2;       
net = feedforwardnet(10);  
net = train(net, x, y);
x_test = -1:0.05:1;        
y_pred = net(x_test);    
plot(x, y, 'o', 'DisplayName', 'البيانات الأصلية'); hold on;
plot(x_test, y_pred, '-', 'DisplayName', 'تقديرات الشبكة'); hold off;
legend('show');
title('تقدير دالة y = x^2 باستخدام شبكة عصبية');
xlabel('x');
ylabel('y');
