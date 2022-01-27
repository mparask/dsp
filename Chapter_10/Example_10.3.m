% Example 10.3

clf; clc; clear all

NDFT = 16;
n = [0:NDFT-1];
x = [1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0];

%wd = [0:pi/NDFT:2*pi];

XDFT = fft(x, NDFT);

% ���������� �������� �������
subplot(211); stem(n, x); grid; ylim([0 1.2]);
xlabel('������ [n]'); title('���� x[n]=u[n]-u[n-4]'); 

subplot(212); stem(abs(XDFT)); grid on; ylim([0 5]);
xlabel('��������� [k]'); title('������ |X(e^j^�)|'); 
