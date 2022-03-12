[num, den]=butter(1,1,'s');
printsys(num,den);
[y,w]=freqs(num,den);
y1=abs(y);
plot(w,y1);
title('First order butterworth filter');
xlabel('Frequency');
ylabel('Magnitude Response');
grid on;