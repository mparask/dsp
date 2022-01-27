% Example 2.17
clc; clear all;

syms t
u(t) = heaviside(t);
% ������� ������� �������
x(t) = exp(-t)*u(t);  	
% ����������� ������� ������
y(t) = diff(x(t), t); 	
% ������� �������� ���������
t0 = 1; 	
% ����������� ������ ��� ���������� ������ ���� t0
yt(t)= diff(x(t-t0));	
% ����������� ����������� ������ ���� t0
yd(t) = y(t-t0);	
% ���������� ������� ��� ������
figure(1); subplot(211); ezplot(x(t), [-0.5, 4]); grid on
subplot(212); ezplot(y(t), [-0.5, 4]); grid on
% ���������� ����������� �������, ������ ��� ���������� ������ ��� ����������� ������
figure(2); subplot(311); ezplot(x(t-t0), [-0.5, 4]); grid on
subplot(312); ezplot(yt(t), [-0.5, 4]); grid on
subplot(313); ezplot(yd(t), [-0.5, 4]); grid on
