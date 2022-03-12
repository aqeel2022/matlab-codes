%n=-5:0.01:5;

R=50;
d=rand(R,1)-0.5;
n=0:1:R-1;  
s=2*(n.*(0.9).^n);
subplot(4,1,1);
plot(n,s);
title('Original Information Signal');
subplot(4,1,2);
plot(n,d);
title('Noise Signal');

add=s+d';
subplot(4,1,3)
plot(n,add);
title('Addition of noise & info')

% sub=add-d';
N=3;
b=ones(N,1)/N;
recovered=filter(b,1,add);
subplot(4,1,4);
plot(n,recovered);
title('Recovered signal');

figure
%plot(n,s,'b');
%hold on
plot(n,s,'b-',n,recovered,'r-')
%plot(n,recovered,'r')
legend Original Recovered
grid