clear all;
close all;
clc;
LenDat = 1000; % Length of binary data
ModIndex = 4; % Modulation Index
BitsPerSym = log2(ModIndex); % Number of bits per modulated symbol
LenModSym = LenDat/BitsPerSym; % Number of modulated symbols to
transmit
%Transmitter
Data = randint(1,LenDat);
temp1 = reshape(Data,BitsPerSym,[]);
temp2 = bi2de(temp1.').';
ModSym = modulate( modem.pskmod(ModIndex), temp2);
SNR = input('SNR in dB = ');
snr = 10^(SNR/10);
%Channel
Noise = (randn(1,LenModSym)+j*randn(1,LenModSym))/sqrt(2);
NoisySignal = ModSym*sqrt( snr ) + Noise;
% Plot Constellation diagram %
scatterplot(ModSym)
title('Transmitted Signal')
scatterplot(NoisySignal)
title('Received Signal')
% Receiver
Htemp2 = demodulate( modem.pskdemod(ModIndex), NoisySignal);
Htemp1 = de2bi(Htemp2.').';
HData = reshape(Htemp1,1,[]);
% Compare the transmitted and the received data for errors
Number_of_Errors = biterr(Data,HData)