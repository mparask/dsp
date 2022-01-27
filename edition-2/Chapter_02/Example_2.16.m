% Example 2.16
clc; clear all;

syms t
u(t) = heaviside(t);
% ������� ������� �������
x(t) = u(t) - u(t-1);
% ����������� ������� ������
y(t) = t*x(t);  
% ���������� ������� ������� ��� ������     
figure(1); subplot(211); ezplot( x(t), [-1,3] );grid on     
subplot(212); ezplot( y(t), [-1,3] );grid on  
% ������� �������� ���������
t0 = 1;   
% ����������� ������ ��� ���������� ������ ���� t0
yt(t) = t*x(t-t0); 
% ����������� ����������� ������ ���� t0
yd(t) = y(t-t0);    
% ���������� ����������� �������, ������ ��� ���������� ������ ��� ����������� ������
figure(2);  subplot(311); ezplot( x(t-t0), [-1,3] ); grid on    
subplot(312); ezplot( yt(t), [-1,3] ); grid on  
subplot(313); ezplot( yd(t), [-1,3] ); grid on  
