[num,den]=butter(2,1,'s');
h=tf(num,den);
pzmap(h,'r');
grid on