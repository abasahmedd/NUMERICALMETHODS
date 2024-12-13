clc
clear

fileID = fopen("xy.txt");
C = textscan(fileID,'%f %f');
fclose(fileID);
celldisp(C);
B = cell2mat(C) ;
N = size(B,1);
sumx = 0;sumy = 0;sumx2 = 0;sumx3 = 0;sumx4 = 0;sumx2y = 0;sumxy = 0;



for i = 1 : N
    x1(i) = B(i,1);
    y1(i) = B(i,2);
    sumx = sumx + B(i,1);
    sumy = sumy + B(i,2);
    sumx2 = sumx2 + B(i,1)^2;
    sumx3 = sumx3 + B(i,1)^3;
    sumx4 = sumx4 + B(i,1)^4;
    sumxy = sumxy + B(i,1)*B(i,2);
    sumx2y = sumx2y + B(i,1)^2*B(i,2);
end

a = [N sumx sumx2 ; sumx sumx2 sumx3 ; sumx2 sumx3 sumx4]; 
c = [sumy ;sumxy ;sumx2y];

n = size(a,1);
for k = 1 : n-1 
    for i = k+1 : n
        m(i,k) = a(i,k) / a(k,k);
        for j = k+1 : n
            a(i,j) = a(i,j) - m(i,k)*a(k,j);
        end
        c(i) = c(i) - m(i,k)*c(k);
    end
end

for k = n : -1 : 1
    sum = 0 ;
    for j = k+1 : n
        sum = sum + a(k,j) * x(j);
    end
    x(k) = (c(k)-sum) / a(k,k);
   
end
for i = 1 : N
    y2(i)= x(1)+x(2)*x1(i)+x(3)*x1(i)^2;
end

%plot(x1 , y1 ,'o', x1 , y2 ,'r-')

a2 = polyfit(x1,y1,4);
y3 = polyval(a2,x1);
plot(x1 , y1 ,'o', x1 , y3 ,'r-',x1 , y2,'b-')

