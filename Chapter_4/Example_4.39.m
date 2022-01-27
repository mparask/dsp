% Example 4.39
clear all; clc; clf;

% ��������� ������� ������� ��� ����������� ��������
Fs = 15000;                % ��������� ��������������
Ts = 1/Fs;                 % ������� ��������������
L = 2048;                  % ����� ������� �������
t = (0:L-1)*Ts;            % �������� ������
x = 100*randn(size(t));    % ���������� ������� 
NFFT = L;                  % ����� ��������������� Fourier

% ����������� ��������������� Fourier
XX = fft(x, NFFT) / L;     
X = XX(1:NFFT/2+1);
f = (Fs/2)*linspace(0,1,(NFFT/2+1));     % �������� ����������

% ��������� �������������� ������� Butterworth
% fc1 = 5, fc2 = 200 ���������� �������� (�� Hz)
% wc1 = 2*pi*fc1, wc2 = 2*pi*fc2 ���������� �������� (�� rad/sec)
fc = 100; wc=2*pi*fc;
order = 8;                  		% ���� �������
[z, p, k] = butter(order, wc, 's');	% �.�. �� ����� �����-��������
[numH, denH] = zp2tf(z, p, k);    	% �.�. �� ���� ����� 
H = freqs(numH, denH, f);           	% �.�. �� �������� �����

% ��������������� Fourier ��� ������ ��� �� ����� Y(�) = �(�) �(�)
Y = X .* H;  

% ���������� �������� �������, ���������� ��� ������
figure(1); subplot(311); loglog(f,abs(X));axis([1,10000,0,10]); grid on
subplot(312); loglog(f, abs(H));  axis([1, 10000, 0, 10]); grid on
subplot(313); loglog(f, abs(Y));  axis([1, 10000, 0, 10]); grid on

% ����������� ������� y(t) �� ���������� Fourier
y = ifft(Y, NFFT) * L;

% ���������� ������� ������� ��� ������
figure(2); subplot(211); plot(x(1:100)); grid on
subplot(212); plot(real(y(1:100))); grid on
