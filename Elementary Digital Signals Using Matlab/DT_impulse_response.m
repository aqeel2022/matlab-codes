%Find the impulse and step responses of the following discrete-time systems
n=-2:1:10;
step=n>=0;
a=[1 0.75]
b=[1]
stepRes=filter(b,a,step)
subplot(311)
stem(n,stepRes)
grid
title('14TL 62 Impluse Respones a')
n=-2:1:10;
step=n>=0;
a=[1 0.75]
b=[1]
stepRes=filter(b,a,step)
subplot(312)
stem(n,stepRes)
title('14TL 62 Impluse Respones b')
grid
n=-2:1:10;
impulse=n==0;
a=[1 -0.75 0.5]
b=[1 0.5]
ImpRes=filter(b,a,impulse)
subplot(313)
stem(n,ImpRes)
title('14TL 62 Impluse Respones c')
grid