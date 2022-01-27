% Example 9.5 (COPY)
% X(e^j� ) = 1/(1-a e^j�)
clf; clc; clear all

N = 100;  a = 0.7; 

w = [0:1:N] * (pi/N);

H = exp(j*w) ./ ( exp(j*w) - a * ones(1, N+1));

%subplot(311), stem(n,x); ylim([0, 1.2]); grid
%xlabel('������ (��������)'); title('���� x[n]'); 

subplot(211), plot(w/pi, abs(H)); grid
xlabel('��������� [0,�]'); title('����� DTFT |H(e^j^�)|'); 

subplot(212), plot(w/pi, angle(H)); grid
xlabel('��������� [0,�]'); title('���� DTFT <H(e^j^�)'); 


