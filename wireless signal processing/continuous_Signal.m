clear all;
clc;
f = 20; % frequency of the CT signal
Fs = 30; % sampling
frequency
T = 1/Fs; % sample
spacing
nT = 0:T:3; % time vector
x =
cos(2*pi*f*nT)+j*sin(2*pi*f*nT);
%hold on
plot(nT,x,'k','LineWidth',2)
%stem(nT,x,'r','LineWidth',2)
%hold off
grid on
title('14TL62')