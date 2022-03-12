%1.x[n]=u[n]
%2.x[n]=u[n]-u[n-10]
%4.x[n]=2u[n]-r[n-2]+4$[n-4]
% plotting all the function in same figure with subplots*/


n=1:1:10;
x=n>=5;
subplot(311)
stem(n,x)
title('x[n]=u[n] By Aqeel Ahmed')
grid
x=n>=0;
x1=n>=10;
y=x-x1;
subplot(312)
stem(n,y)
title('x[n]=u[n]-u[n-10')
grid
x=2.*(n>=0);
x1=(n-2).*(n>=2);
x2=4.*(n==4);
y=x-x1+x2;
subplot(313)
stem(n,y)
title('x[n]=2u[n]-r[n-2]+4$[n-4]')
grid