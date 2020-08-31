
%Construct triangular wave with sawtooth function
fs = 1000;  % sampling frequency
t = 0:1/fs:0.12;
x = sawtooth(2*pi*25*t,1/2);
plot(t,x,'r')
xlabel('Time t[sec]')
ylabel('Amplitude')
title('Triangle Waveform', 'FontSize', 10);
grid on

%Take fourier transform
fftSignal = fft(x);
l=length(fftSignal);
t=linspace(0,l/fs,l);
%apply fftshift 
fftSignal = fftshift(fftSignal);

%calculate the frequency axis
f0 = (-l/2:l/2-1)*(fs/l); % 0-centered frequency range
figure();
plot(f0,abs(fftSignal))
ylabel('Time')
xlabel('Frequency')
