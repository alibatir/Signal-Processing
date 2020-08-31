%load noise audio file
[y,Fs]= audioread('noise_p232_090.wav');
info = audioinfo('noise_p232_090.wav');
t = 0:seconds(1/Fs):seconds(info.Duration);
t = t(1:end-1);
subplot(2,1,1); plot(t,y); %plot the noise signal
title('noise signal');

%finding fft of noise audio
L=length(y); %size of the longest dimension of noise
NEFT = 2^nextpow2(L); %returns the smallest power of two
Y=abs(fft(y,NEFT)); %absolute value of fft
freq = Fs/2*linspace(0,1,NEFT/2+1); %linspace:generate logarithmically spaced values
subplot(2,1,2); plot(freq, Y(1:length(freq))) %plot the fft
title('noise fft')

%load clean audio file
[clean_y,clean_Fs]= audioread('clean_p232_090.wav');
clean_info = audioinfo('clean_p232_090.wav');
clean_t = 0:seconds(1/clean_Fs):seconds(info.Duration);
clean_t = clean_t(1:end-1);
figure();
subplot(2,1,1); plot(clean_t,clean_y); %plot the clean signal
title('clean signal');

%finding fft of clean audio
clean_L=length(clean_y); %size of the longest dimension of clean
clean_NEFT = 2^nextpow2(clean_L); %returns the smallest power of two
clean_Y=abs(fft(clean_y,clean_NEFT));
clean_freq = clean_Fs/2*linspace(0,1,clean_NEFT/2+1); %linspace:generate logarithmically spaced values
subplot(2,1,2); plot(clean_freq, clean_Y(1:length(clean_freq))) %plot the fft
title('clean fft')

%finding the time-response by using the functions ifft and ifftshift
F= clean_Y(1:length(clean_freq))./ Y(1:length(freq)); %FFT(clean signal)/FFT(noisy signal)
F=ifft(F,'symmetric'); %shift
%use circular convolution(cconv)
new=cconv(F,clean_Y(1:length(clean_freq)),length(Y(1:length(freq))));
%cconv(F,clean,length(noise));

new_L=length(clean_y); %size of the longest dimension of clean
new_NEFT = 2^nextpow2(new_L); %returns the smallest power of two
new_freq = clean_Fs/2*linspace(0,1,new_NEFT/2+1); %linspace:generate logarithmically spaced values
figure(); plot(new_freq, ifftshift(new(1:length(new_freq)))); %plot inverse zero-frequency shift
title('new signal')
