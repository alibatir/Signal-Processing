%PROBLEM 7
filename = 'mysignal.mat';
load(filename);
Y = fft(x);
l=length(x);
Y0 = fftshift(Y); 
f0 = (-l/2:l/2-1)*(fs/l); % 0-centered frequency range
power0 = abs(Y0).^2/l;    % 0-centered power
plot(f0,power0)
xlabel('Frequency')
ylabel('Power')
xlim([-5000 5000])
