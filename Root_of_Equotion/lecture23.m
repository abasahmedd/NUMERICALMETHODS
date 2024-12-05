a = 12;          
b = 16;          
n = 0;           
acc = 0.001;     

f = @(x) ((667.38 / x) * (1 - exp(-0.146843 * x))) - 40;

if f(a) * f(b) > 0
    disp('Root does not exist in the given interval');



else
    fprintf('Itr   x_l        x_u        x_r        ε_t        ε_a\n');
    
    x_r_old = a;  
    while true

        x_r = b - (f(b) * (a - b) / (f(a) - f(b)));
        
        e_t = abs((x_r - 14.78017) / 14.78017) * 100; 
        if n == 0
            e_a = 1;  
        else
            e_a = abs((x_r - x_r_old) / x_r) * 100; 
        end
        
        fprintf('%-5d %-10.5f %-10.5f %-10.5f %-10.6f %-10.6f\n', n + 1, a, b, x_r, e_t, e_a);
        
        if e_a < acc
            break;
        end
        
        if f(a) * f(x_r) < 0
            b = x_r;
        else
            a = x_r;
        end
        
        x_r_old = x_r;
        n = n + 1;
    end
end
plot(e_a)
