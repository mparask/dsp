clear all
clc; clf
n = -11:11;             % ������� �������� ������
A=-3; B=8; C=0; D=4.5;  % ���� ��������� ������

% ���������� ������ u[n]-u[n-4]
u = zeros(1,length(n)); u(1,12:16) = 1;

% ���������� x[n] = [4-n] [u[n]-u[n-4]]
x = (4-n).*u;

% ���������� y1[n] = x[2-n]
[y1, n] = sigfold(x, n);
[y1, m1] = sigshift(y1, n, 2);

% ���������� y2[n] = x[2n-1]
[y2a, m2a] = sigshift(x, n, 1);
y2  = downsample(y2a, 2);
m2  = downsample(m2a, 2);

% ���������� y3[n] = x[6-2n]
[y3a, m3a] = sigshift(x, n, -6);
[y3b, m3b] = sigfold(y3a, m3a);
y3  = downsample(y3b, 2);
m3  = downsample(m3b, 2);

% ���������� ��������

figure(1); subplot(121); stem(n, x); grid on;
axis([A B C D]); title('(�) x[n]')
subplot(122); stem(m1, y1); grid on;
axis([A B C D]); title('(�) y1[n] = x[2-n] ')

figure(2); subplot(121); stem(m2a, y2a); grid on;
axis([A B C D]); title('(�) x[n-1]')
subplot(122); stem(m2, y2); grid on;
axis([A B C D]); title('(�) y2[n] = x[2n-1] ')

figure(3); subplot(121); stem(m3b, y3b); grid on;
axis([A B C D]); title ('(�) x[6-n]')
subplot(122); stem(m3, y3); grid on;
axis([A B C D]); title ('(��) y3[n] = x[6-2n]')