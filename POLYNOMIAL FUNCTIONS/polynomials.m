%POLYNOMIALS IN MATLAB


x = [1 2 3 4 5 6 7];
y = [0.5 2.5 2 4 3.5 6 5.5];
n = length(x);

sumx = 0;
sumy = 0;
sumx2 = 0;
sumxy = 0;

for i = 1 : n
    sumx = sumx + x(i);
    sumy = sumy + y(i);
    sumx2 = sumx2 + x(i)^2 ;
    sumxy = sumxy + x(i)*y(i) ;
end 
sumxa = sumx / n ;
sumya = sumy / n ;

a = [n sumx ; sumx sumx2 ];
c = [sumy; sumxy];

a1 =  ( n*sumxy - sumx*sumy )/( n*sumx2 - (sumx)^2 );
a0 = sumya - a1 * sumxa ;


y1 = zeros(1,n);
for i = 1 : n
    y1(i) = a0 + a1 * x(i) ;
end 

plot(x,y1);