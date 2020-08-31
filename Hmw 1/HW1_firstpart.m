%PROBLEM 1
%t is vector of real numbers (-2:0.01:2):
t=-2:0.01:2;%starts at -2, increments by 0.01, and ends at or before 2
y1=sin(2*pi*t);
y2=sin(2*pi*10*t);
y3=10*sin(2*pi*t);
y4=sin(2*pi*t)+10;
y5=sin(2*pi*(t-0.5));
y6=10*sin(2*pi*10*t);
y7=t.*sin(2*pi*t); %To perform elementwise multiplication, use '.*'
y8=sin(2*pi*t)./t;
y9=y1+y2+y3+y4+y5+y6+y7+y8;
subplot(5,2,1); plot(t,y1); title('y1=sin(2*pi*t)');
subplot(5,2,2); plot(t,y2); title('y2=sin(2*pi*10*t)');
subplot(5,2,3); plot(t,y3); title('y3=10*sin(2*pi*t)');
subplot(5,2,4); plot(t,y4); title('y4=sin(2*pi*t)+10');
subplot(5,2,5); plot(t,y5); title('y5=sin(2*pi*(t-0.5))');
subplot(5,2,6); plot(t,y6); title('y6=10*sin(2*pi*10*t)');
subplot(5,2,7); plot(t,y7); title('y7=t.*sin(2*pi*t)');
subplot(5,2,8); plot(t,y8); title('y8=sin(2*pi*t)./t');
subplot(5,2,9); plot(t,y9); title('y9=y1+y2+y3+y4+y5+y6+y7+y8');

%//////////////////////////////////////////////////////////////////////////
% PROBLEM 2
figure;
z=randn(1,401)*0.1; %Generate 401 random numbers following Gaussian distributed random numbers
y10= z;
y11 = z+t;
y12= z+y1;
y13= z.*y1;
y14=t.*sin(2*pi*z);
y15= sin(2*pi*(t+z));
y16= z.*y2;
y17= sin(2*pi*(t+10*z));
y18=y1./z;
y19= y11+y12+y13+y14+y15+y16+y17+y18;
subplot(5,2,1);plot(t,y10);title('y10= z');
subplot(5,2,2);plot(t,y11);title('y11 = z+t');
subplot(5,2,3);plot(t,y12);title('y12= z+y1');
subplot(5,2,4);plot(t,y13);title('y13= z.*y1');
subplot(5,2,5);plot(t,y14);title('y14=t.*sin(2*pi*z)');
subplot(5,2,6);plot(t,y15);title('y15= sin(2*pi*(t+z))');
subplot(5,2,7);plot(t,y16);title('y16= z.*y2');
subplot(5,2,8);plot(t,y17);title('y17= sin(2*pi*(t+10*z))');
subplot(5,2,9);plot(t,y18);title('y18=y1./z');
subplot(5,2,10);plot(t,y19);title('y19= y11+y12+y13+y14+y15+y16+y17+y18');
%//////////////////////////////////////////////////////////////////////////
%PROBLEM 3 
figure;
z=rand(1,401)*0.1;
y20= z;
y21 = z+t;
y22= z+y1;
y23= z.*y1;
y24=t.*sin(2*pi*z);
y25= sin(2*pi*(t+z));
y26= z.*y2;
y27= sin(2*pi*(t+10*z));
y28=y1./z;
y29= y21+y22+y23+24+25+26+27+y28;
subplot(5,2,1);plot(t,y20);title('y20= z');
subplot(5,2,2);plot(t,y21);title('y21 = z+t');
subplot(5,2,3);plot(t,y22);title('y22= z+y1');
subplot(5,2,4);plot(t,y23);title('y23= z.*y1');
subplot(5,2,5);plot(t,y24);title('y24=t.*sin(2*pi*z)');
subplot(5,2,6);plot(t,y25);title('y25= sin(2*pi*(t+z))');
subplot(5,2,7);plot(t,y26);title('y26= z.*y2');
subplot(5,2,8);plot(t,y27);title('y27= sin(2*pi*(t+10*z))');
subplot(5,2,9);plot(t,y28);title('y28=y1./z');
subplot(5,2,10);plot(t,y29);title('y29= y21+y22+y23+24+25+26+27+y28');
%//////////////////////////////////////////////////////////////////////////
%PROBLEM 4
figure;
%Starting with z (0,1) Gaussian(Normal) Random variable.
%Generate 5000 random variables with mean 0, variance 1; call it r1 vector
r1=1*randn(1,5000)+0;
%Generate 5000 random variables with mean 0, variance 8; call it r2 vector
sd = sqrt(8); % standard deviation
r2=sd*randn(1,5000)+0; % .* ?
%Generate 5000 random variables with mean 0, variance 64; call it r3 vector
r3=8*randn(1,5000)+0;
%Generate 5000 random variables with mean 0, variance 256; call it r4 vector
r4=16*randn(1,5000)+0;
subplot(2,2,1);histogram(r1);title('r1=1*randn(1,5000)+0');
subplot(2,2,2);histogram(r2);title('r2=sd*randn(1,5000)+0');
subplot(2,2,3);histogram(r3);title('r3=8*randn(1,5000)+0');
subplot(2,2,4);histogram(r4);title('r4=16*randn(1,5000)+0');


%//////////////////////////////////////////////////////////////////////////
%PROBLEM 5
figure;
%Starting with z (0,1) Gaussian Random variable.
%Generate 5000 random variables with mean 10, variance 1; call it r6 vector
r6=1*rand(1,5000)+10;
%Generate 5000 random variables with mean 20, variance 4; call it r7 vector
r7=2*rand(1,5000)+20;
%Generate 5000 random variables with mean -10, variance 1; call it r8 vector
r8=1*rand(1,5000)-10;
%Generate 5000 random variables with mean -20, variance 4; call it r9 vector
r9=2*rand(1,5000)-20;
subplot(2,2,1);histogram(r6);title('r6=1*rand(1,5000)+10');
subplot(2,2,2);histogram(r7);title('r7=2*rand(1,5000)+20');
subplot(2,2,3);histogram(r8);title('r8=1*rand(1,5000)-10');
subplot(2,2,4);histogram(r9);title('r9=2*rand(1,5000)-20');

%//////////////////////////////////////////////////////////////////////////
%PROBLEM 6
figure;
%Starting with z uniformly distributed random variable.
%Generate 5000 random variables with between -4 and 4; call it r11 vector
r11=randi([-4 4],1,5000);
%Generate 5000 random variables with between -20 and 20; call it r21 vector
r21=randi([-20 20],1,5000);
subplot(2,1,1);histogram(r11);title('r11=randi([-4 4],1,5000)');
subplot(2,1,2);histogram(r21);title('r21=randi([-20 20],1,5000)');

