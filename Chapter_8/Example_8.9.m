% Example 8.9
clc; clf; clear all;

% ������ ��������� 
b = [2, 3];
p = roots(b)

% ������ ����� 
a = [1, 0.4, 1];
z = roots(a)

% �������� ������������
% �����- ���������
zplane(z, p); grid on