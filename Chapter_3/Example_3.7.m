% Example 3.7
clc; clear all; clf

syms t
t0 = 0; T = 5; w = 2*pi/T;      
N = 20;             % N = ������ ����������� ������ Fourier
x = exp(-t);                
a0 = (1/T) * int(x, t, t0, t0+T);   % ����� 3.2
for n = 1:N;
  a(n) = (2/T) * int(x*cos(n*w*t), t, t0, t0+T); % ����� 3.3
  b(n) = (2/T) * int(x*sin(n*w*t), t, t0, t0+T); % ����� 3.4
end
n = 1:N;            % Xs = ���������� ������� x(t) ���� ������ Fourier
Xs = a0 + sum(a.*cos(n*w*t) + b.*sin(n*w*t) );
figure(1); ezplot(x, [0,T]); grid on    % ���������� ������� �������
figure(2); ezplot(Xs, [0,T]); grid on   % ���������� �����������
