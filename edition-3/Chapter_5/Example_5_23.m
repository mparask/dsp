% Example 5.23
clear all; clc

syms t W; 
u(t) = heaviside(t);
x(t) = exp(-3*t)*u(t);      % ���� ������� x(t)
X(W) = fourier(x(t), W);    % Fourier ������� �(�)
y(t) = t*exp(-3*t)*u(t);    % ���� ������� y(t)
Y(W) = fourier(y(t), W);    % Fourier ������� Y(�)
H(W) = Y(W) / X(W)          % �������� ����������

figure(1)
subplot(121); fplot(abs(H(W)), [-60,60]); ylim([0,0.4]); title('����� �������'); grid on
subplot(122); fplot(angle(H(W)), [-60,60], 'm'); title('����� �����'); grid on

figure(2)
h(t) = ifourier(H(W), t); 
ezplot(t, h); xlim([0 2]); ylim([0 1]); title('��������� ��������'); grid on