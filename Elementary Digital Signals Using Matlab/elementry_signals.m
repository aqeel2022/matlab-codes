%Lab Task 1: Generate an impulse and a step signal with amplitude of 2 units and a ramp signal
%with a slope of 2. Take an arbitrary time vector. Attach plots as well.
n=-5:1:5;
impulse=2.*(n==0);
subplot(311)
stem(n,impulse)
title('Impulse function with amplitude 2')
grid
n=-5:1:5;
step=2.*(n>=0);
subplot(312)
stem(n,step)
title('Step function with amplitude 2')
grid
n=0:1:5;
ramp=n.*(2.*(n>=0));
subplot(313)
stem(n,ramp)
title('Ramp function with amplitude 2')
grid

