% Example 10.11
clear all; clc; clf;

% ���������� ���������� x[n]
N = 10; n = [0:N]; x = 0.7 .^ n;

% ������� ���������� y[n] = x[n mod 11]
y = x(mod(-n, N) + 1);

% ����������� ������� ������ ���������� x_ce[n]
xce = 0.5 * ( x + y );

% ����������� ������� �������� ���������� x_co[n]
xco = 0.5 * ( x - y );

% �������� ���������� x_ce[n] ��� x_c0[n]
figure(1);
subplot(131); stem(n,x); title('������ ��������� x[n]'); grid on
subplot(132); stem(n,xce); title('������� ����� ��������� x_c_e[n]'); grid on
subplot(133); stem(n,xco); title('������� ������� ��������� x_c_o[n]'); grid on

k = [0:N-1]; % ������� ����������

% ����������� DFT ���������� x[n] ��� y[n]
X = fft(x,N); Y = fft(y,N);

% ����������� DFT ���������� xce[n] ��� xc0[n]
Xce = fft(xce,N); Xco = fft(xco,N);

% �������� ����������� ������ DFT Xce[k], X[k]
figure(2); 
subplot(221); stem(k, real(Xce)); title('���������� ����� Xce[k]');grid on
subplot(222); stem(k, real(X)); title('���������� ����� X[k]'); grid on

% �������� ����������� ������ DFT Xco[k] X[k]
subplot(223); stem(k, imag(Xco)); title('���������� ����� Xco[k]');grid on
subplot(224); stem(k, imag(X)); title('���������� ����� X[k]');grid on