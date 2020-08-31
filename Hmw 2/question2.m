%% Undersampling
F = 1000;     % frequency of signal
Fs = 2*F;   % sampling frequency 
Ts = 1/Fs;  % sampling period 
%Generate signals and sampling 
tc = 0:0.00001:5/F;        % axis
y1=cos(pi*F*tc);  %first signal
y2=cos(2*pi*F*tc); %second signal
yc = y1+y2;    % sum of Continous time signals
td = 0:Ts:5/F;  %axis
y1=cos(pi*F*td);% first signal
y2=cos(2*pi*F*td); %second signal
yd = y1+y2;    % sum of discrete time signals
L = length(td);         % number of samples
% Reconstruction by using the formula:
Recns = zeros(size(tc));
sinc_train = zeros(L,length(tc));
for t = 1:length(tc)
    for i = 0:L-1
        % sinc(x) = sin(pi*x)/(pi*x) according to MATLAB
        sinc_train(i+1,:) = sin(pi*(tc-i*Ts)/Ts)./(pi*(tc-i*Ts)/Ts);
        Recns(t) = Recns(t) + yd(i+1)*sin(pi*(tc(t)-i*Ts)/Ts)/(pi*(tc(t)-i*Ts)/Ts);
    end
end
%Plot the signals
figure();title('Undersampling');
hold on
plot(tc,yc);stem(td,yd);plot(tc,Recns);
hold off

%% Oversampling
F = 1000;     % frequency of signal
Fs = 50*F;   % Increase the ratio of sampling frequency 
Ts = 1/Fs;  % sampling period 
%Generate signals and sampling 
tc = 0:0.00001:5/F;        % axis
y1=cos(pi*F*tc);  %first signal
y2=cos(2*pi*F*tc); %second signal
yc = y1+y2;    % sum of Continous time signals
td = 0:Ts:5/F;  %axis
y1=cos(pi*F*td);% first signal
y2=cos(2*pi*F*td); %second signal
yd = y1+y2;    % sum of discrete time signals
L = length(td);         % number of samples
% Reconstruction by using the formula:
Recns = zeros(size(tc));
sinc_train = zeros(L,length(tc));
for t = 1:length(tc)
    for i = 0:L-1
        % sinc(x) = sin(pi*x)/(pi*x) according to MATLAB
        sinc_train(i+1,:) = sin(pi*(tc-i*Ts)/Ts)./(pi*(tc-i*Ts)/Ts);
        Recns(t) = Recns(t) + yd(i+1)*sin(pi*(tc(t)-i*Ts)/Ts)/(pi*(tc(t)-i*Ts)/Ts);
    end
end
figure();title('Oversampling');
hold on
plot(tc,yc);stem(td,yd); plot(tc,Recns);
hold off

%% Sampling at Nyquist rate 
F = 1000;     % frequency of signal
Fs = 2*F;   % sampling frequency 
Fn= Fs/2;   %nyquist frequency
Ts = 1/Fn;  % sampling period 
%Generate signals and sampling 
tc = 0:0.00001:5/F;        % axis
y1=cos(pi*F*tc);  %first signal
y2=cos(2*pi*F*tc); %second signal
yc = y1+y2;    % sum of Continous time signals
td = 0:Ts:5/F;  %axis
y1=cos(pi*F*td);% first signal
y2=cos(2*pi*F*td); %second signal
yd = y1+y2;    % sum of discrete time signals
L = length(td);         % number of samples
% Reconstruction by using the formula:
Recns = zeros(size(tc));
sinc_train = zeros(L,length(tc));
for t = 1:length(tc)
    for i = 0:L-1
        % sinc(x) = sin(pi*x)/(pi*x) according to MATLAB
        sinc_train(i+1,:) = sin(pi*(tc-i*Ts)/Ts)./(pi*(tc-i*Ts)/Ts);
        Recns(t) = Recns(t) + yd(i+1)*sin(pi*(tc(t)-i*Ts)/Ts)/(pi*(tc(t)-i*Ts)/Ts);
    end
end
%Plot the signals
figure();title('Sampling at Nyquist rate');
hold on
plot(tc,yc);stem(td,yd);plot(tc,Recns);
hold off