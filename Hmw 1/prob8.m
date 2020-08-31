%PROBLEM 8
[y,fs] = audioread('hw1-prob8.m4a'); %y=sampled data and Fs is the sampling rate
y1 = y(:,1);
y2 = y(:,2);
Y = fft(y1);
l=length(y1);
t=linspace(0,l/fs,l);
Y0 = fftshift(Y);         % shift y values
f0 = (-l/2:l/2-1)*(fs/l); % 0-centered frequency range
plot(t,f0)
ylabel('Time')
xlabel('Frequency')



