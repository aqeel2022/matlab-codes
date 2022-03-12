[num,den]=cheby2(2,5,10,'s');
[y,w]=freqs(num,den);
y1=abs(y);
subplot(2,1,1)
plot(w,y1,'b');
hold on
subplot(2,1,2);
y2=angle(y)*180/(pi);
plot(w,y2);
