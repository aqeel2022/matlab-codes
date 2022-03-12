[num,den]=cheby1(1,0.5,1,'s');
[y,w]=freqs(num,den);
y1=abs(y);
plot(w,y1,'b');
grid on