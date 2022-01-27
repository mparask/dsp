% Example 7.27

clc; clf; clear all

% y[n] + 0,2y[n-1] - 0,5y[n-2] = x[n] - 0,5x[n-1] 
% ������� ��������: y[-1] = 1,  y[-2] = -1

% �������: x[n] = (-0.6)^n u[n]
N=40; n=0:N-1; x=(-0.6).^n;

% ���������� x[n] = �[n]
%N=20; n=0:N-1; x=zeros(1, N); x(1, n==0)=1;

% ������� ����������� a ��� b
a = [1, 0.2, -0.5];
b = [1, -0.5];

% ������� ������� �������� ������ 
IC = [1, -1];

% �������� ��������� ������� (�������� ����)
yh = filter(b, a, zeros(1, N), filtic(b, a, IC));

% �������� ��������� ���������� (������ ����)
yp = filter(b, a, x, filtic(b, a, [0, 0]));

% �������� �������� y[n] = yh[n] + yp[n]
y = yh + yp;

% ���������� �������� �����������

figure(1)
subplot(311); stem(n,yh); 
title('�������� ��������� ������� - �������� ���� yh[n]'); 
ylim([-2, 2]); grid on

subplot(312); stem(n,yp); 
title('�������� ��������� ���������� - ������ ���� yp[n]'); 
ylim([-2, 2]); grid on

subplot(313); stem(n,y); 
title('�������� �������� - ������ ���� y[n] = yh[n] + yp[n]'); 
ylim([-2, 2]); grid on