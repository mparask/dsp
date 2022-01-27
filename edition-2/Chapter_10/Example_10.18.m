% Example 10.18
clear all; clc; clf

% ����� ������� ��� ���������
N = 64;
% ���������� �������� ������ ��� ����������
n = [0:N-1]; k = [0:1/(N/2):1];
% ���������� ������� x[n]
x = sin(pi*n/8);
% ���������� ��������� Hamming
w = hamming(N)';
% ��������������� xw[n]=x[n]w[n]
xw = x .* w;
% ����������� DFT X[k], W[k], Xw[k]
X = fft(x, N);
W = fft(w, N);
Xw = fft(xw, N);
% ���������� ������� ��� �����
figure(1);
subplot(311); stem(n,x); xlim([1,N]); title('��������� x[n]'); grid on
subplot(312); stem(n,w); xlim([1,N]); title('�������� w[n]'); grid on
subplot(313); stem(n,xw); xlim([1,N]); title('�������� xw[n]=x[n] w[n]'); grid on
% ���������� �������� ��� ���������
figure(2);
subplot(311); stem(k, abs(X(1:N/2+1))); title('|�[k]|'); grid on
subplot(312); stem(k, abs(W(1:N/2+1))); title('|W[k]|'); grid on
subplot(313); stem(k, abs(Xw(1:N/2+1))); title('|�w[k]|'); grid on