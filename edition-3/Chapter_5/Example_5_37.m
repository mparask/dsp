% Example 5.37

clear all; clc

% ��������� ������� ������� ��� ����������� ��������
Fs = 15000;                	% ��������� ��������������
Ts = 1/Fs;                 	% �������� ��������������
L = 2048;                 	% ����� ������� �������
t = (0:L-1)*Ts;            	% �������� ������
noise = 100*randn(size(t)); 	% ���������� ������� 
NFFT = L;                  	% ����� ��������������� Fourier

% ����������� ��������������� Fourier ������� �������
NOISE = fft(noise, NFFT) / L; 
X = NOISE(1:NFFT/2+1);
f = (Fs/2)*linspace(0,1,(NFFT/2+1));     % �������� ����������

% ��������� ����������� ������� Butterworth
% fc = 100 ��������� �������� (Hz)
% Wc = 2*pi*fc ��������� �������� (rad/sec)
fc = 100; Wc=2*pi*fc;
order = 8;                  		% ���� �������
[z, p, k] = butter(order, Wc, 's');	% �.�. �� ����� �����-���������
[numH, denH] = zp2tf(z, p, k);    	% �.�. �� ���� ����� 
H = freqs(numH, denH, f);          	% �.�. �� �������� �����

% ����������� ���. Fourier ��� ������ ��� �� ����� Y(�) = �(�) �(�)
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