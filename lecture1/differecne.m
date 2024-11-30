clc
clear

f = @(x) x^2; % الدالة f(x) = x^2
df_exact = @(x) 2*x; % المشتقة الدقيقة f'(x) = 2x

x = 2; % النقطة التي نحسب عندها المشتقة
h = 0.1; % الخطوة الزمنية

% حساب الفروق
forward_diff = (f(x+h) - f(x)) / h; % الفرق الأمامي
backward_diff = (f(x) - f(x-h)) / h; % الفرق الخلفي
central_diff = (f(x+h) - f(x-h)) / (2*h); % الفرق الوسطي