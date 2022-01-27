% Example 11.5
clc; clear all; clf

Fs = 10000; % ��������� ��������������
fp = 1500;  % ��������� �������� ����� ���������
fs = 2000;  % ��������� �������� ����� ��������
dp = 0.001; % �������� ��� ���� ���������   
ds = 0.1;   % �������� ��� ���� ��������

F = [fp fs]; A = [1 0]; Deviation = [dp ds]; 

% ����������� ��������� ����� 
[N, Fo, Ao, Weights] = firpmord(F, A, Deviation, Fs)

% ����������� h[n] �� Parks-McClellan
h = firpm(N, Fo, Ao, Weights);  

% ���������� ���������� ��������� FIR �������
n = 0:1:N;  figure(1); stem(n, h); grid on; 
title('��������� �������� FIR �������')

% ���������� ��������� ���������� FIR �������
NFFT = 512; M = NFFT/2 + 1;
figure(2); freqz(h, 1, NFFT, Fs); axis([0, Fs/2 -60 10])
title('A������� ���������� FIR �������')
