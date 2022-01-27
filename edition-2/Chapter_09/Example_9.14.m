% Example 9.14

clf; clc; clear all

N = 20;

w = [-pi:pi/N:pi];

X = exp(j*2*w) + exp(j*w) + 1 + exp(-j*w);

Xd = exp(j*w) + 1;

% ���������� �������� �������

subplot(211), plot(w/pi, abs(X)); grid; xlim([-1,1]); ylim([0 5]);
xlabel('��������� [-�,�]'); title('����� |X(e^j^�)|'); 

subplot(212), plot(w/pi, abs(Xd)); grid; xlim([-1,1]); ylim([0 5]);
xlabel('��������� [-�,�]'); title('����� |Xd(e^j^�)|'); 




