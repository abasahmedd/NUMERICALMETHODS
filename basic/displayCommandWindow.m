%disply data in command window


% t 
fprintf('Itr\t   xl\t      xu\t      xr\t      ε_t\t      ε_a\n');
fprintf('-------------------------------------------------------------\n');
for j = 1:i
    fprintf('%d\t  %.4f\t  %.4f\t  %.4f\t  %.4f\t  %.4f\n', ...
        iterations(j), xl, xu, xr_values(j), et_values(j), ea_values(j));
end
