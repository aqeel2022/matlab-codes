%Generate and plot three periods of a sinusoidal signal with a frequency of 10 Hz. Assume
%suitable values for all necessary parameters

clear all;
 clc;
 f = 10; % frequency of the CT signal
 Fs = 5*f; % sampling frequency
 T = 1/Fs; % sample spacing
 nT = 0:0.091:3; % time vector
 x = sin(2*pi*f*nT);
hold on
 plot(nT,x,'k','LineWidth',2)
stem(nT,x,'k','LineWidth',2)
hold off
 grid on
title('Sin wave with 3 periods by Aqeel Ahmed')