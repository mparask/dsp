% Example 9.15
clc; clf; clear all;

% ������ ���������
p = roots([2, 3, 0])

% ������ ����� 
z = roots([1, 0.4, 1])

% �������� ������������ �����- ���������
zplane(z, p); grid on