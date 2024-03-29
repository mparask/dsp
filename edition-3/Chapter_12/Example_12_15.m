% Example 12.15

clear all; clc

% ����� �������� ��������� 
N = 4;

% ������� �������� ������ ��� ���������� x[n] ��� g[n]
n = [0, 1, 2, 3]; x = [0, 1, 2, 3]; g = [1, 2, 0, -1];

% ����������� DFT �������� X[k] ��� G[k]
X = fft(x, N); G = fft(g, N);

% ��������������� �[k] = X[k].G[k]
Y = X .* G;

% ����������� ����������� DFT
y = ifft(Y, N);

% ������� ���������� ���� -1
y = circshift(y,-1)