%Plot the magnitude spectra for the signals generated in Lab Activities 4 and 5. Hint. Use the
%Discrete Fourier Transform

clear all ;
clc;
f = 20; % frequency of the
CT signal
Fs = 30; % sampling frequency
T = 1/Fs; % sample spacing
nT = 0:T:3; % time vector
x = cos(2*pi*f*nT)+j*sin(2*pi*f*nT);
%plot first half of DFT (normalised
frequency)
Y_mags = abs(fft(x));
num_bins = length(Y_mags);
plot([0:1/(num_bins/2 -1):1],
Y_mags(1:num_bins/2))
grid on;
title('Magnitude spectrum of signal');
xlabel('Normalised frequency (\pirads/sample)');
ylabel('Magnitude');