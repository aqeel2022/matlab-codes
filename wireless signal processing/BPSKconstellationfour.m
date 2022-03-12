%Program for BPSK Constellation
Diagram
clear all;
close all; clc;
LenDat = 100;
ModIndex = 4;
BitsPerSym = log2(ModIndex);
% Transmitter
Data = randint(1,LenDat);
temp1 = reshape(Data,BitsPerSym,[]);
temp2 = bi2de(temp1.').';
ModSym = modulate(
modem.pskmod(ModIndex), temp2);
% Generating Constellation diagram
scatterplot(ModSym)
% Receiver
Htemp2 = demodulate(
modem.pskdemod(ModIndex), ModSym);
Htemp1 = de2bi(Htemp2.').';
HData = reshape(Htemp1,1,[]);
% Compare the transmitted and the
received data for errors
biterr(Data,HData)