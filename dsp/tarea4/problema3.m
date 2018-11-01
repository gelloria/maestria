clear all;
close all;

fs = 20;             %#sampling rate
f0 = 1;              %#notch frequency
fn = fs/2;              %#Nyquist frequency
freqRatio = f0/fn;      %#ratio of notch freq. to Nyquist freq.

notchWidth = 0.1;       %#width of the notch

step = [ones(1,fs*10)]

#%Compute zeros
notchPoles = [exp( sqrt(-1)*pi*freqRatio ), exp( -sqrt(-1)*pi*freqRatio )];

%#Compute poles
notchZeros = [];

figure;
zplane(notchZeros.', notchPoles.');

b = poly( notchZeros ); %# Get moving average filter coefficients
a = poly( notchPoles ); %# Get autoregressive filter coefficients

figure;
freqz(b,a,32000,fs)

%#filter signal x
y = filter(b,a,step);

figure;
plot(y)
