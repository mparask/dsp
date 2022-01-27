% Example 3.5
clc; clear all; clf

syms t
t0 = 0; T0 = 1; w0 = 2*pi/T0; A=1; N=10; %� ������ ����. ������ Fourier
x = abs( A*sin(pi*t) );   	% ������� ������� x(t)
a0 = (1/T0) * int(x, t, t0, t0+T0);     % ����� 3.2
c0 = a0;
% ����������� ������� 3.3, 3.4, 3.6 ��� 4.7
for n = 1 : N;
   a(n) = (2/T0) * int(x*cos(n*w0*t), t, t0, t0+T0);   	% ����� 3.3
   b(n) = (2/T0) * int(x*sin(n*w0*t), t, t0, t0+T0);	% ����� 3.4
   c(n) = sqrt( (a(n))^2 + (b(n))^2 );         		% ����� 3.6
   f(n) = -atan( b(n) / a(n) );         			% ����� 3.7
end
C = [c0 c]; % ���������� ���� ��� ����������� c �� ��� �������� C
k = 0: N;   % ���������� ����� ����� [0, �]
figure(1);
subplot(211); stem(k, C); grid on;  % ����� ������� ����� �������
subplot(212); stem(f); grid on;     % ����� ����� ����� �������

M = N/2;
for n = -M : M
   X(n+(M+1)) = (1/T0) * int(x*exp(-j*w0*n*t),t,t0,t0+T0); %����� 3.9
end
figure(2); stem(-M:M, abs(X)); grid on
