[num, den]=butter(1,1,'s')
%printsys(num,den);
[y,w]=freqs(num,den);
y1=abs(y);
plot(w,y1,'g');
title('Four orders butterworth filters 14TL02');
xlabel('Frequency');
ylabel('Magnitude Response');
grid on;
hold on

[num, den]=butter(2,1,'s')
[y,w]=freqs(num,den);
y1=abs(y);
plot(w,y1,'b');
hold on

[num, den]=butter(3,1,'s')
[y,w]=freqs(num,den);
y1=abs(y);
plot(w,y1,'k');
hold on

[num, den]=butter(4,1,'s')
[y,w]=freqs(num,den);
y1=abs(y);
plot(w,y1,'r');
legend First_.Order Second_.Order Third_.Order Fourth_.Order