% Example 8.37
clear all; clc

% ���������� x[n] = �[n]
N = 60; n = 0:N-1; x = zeros(size(n)); x(n==0) = 1;

% ������� ����������� a ��� b
a = [1, 0.1, -0.72];  b = [1];

% ������� ������� �������� ������ 
IC = [0, 0];    

% �������� ��������� ������� (�������� ����)
yh = filter(b, a, zeros(1, N), filtic(b, a, IC));

% �������� ��������� ���������� (������ ����)
yp = filter(b, a, x, filtic(b, a, [0, 0]));

% �������� �������� y[n] = yh[n] + yp[n]
h = yh + yp;

% ������� ��� ����� ��� ������ 
h1 = (8/17)*(0.8).^n + (9/17)*(-0.9).^n;

% ���������� �������� �����������
subplot(121);stem(n,h);title('h[n] �� ��������� filter'); grid on
subplot(122);stem(n,h1,'r'); title('h[n] ��� ������'); grid on