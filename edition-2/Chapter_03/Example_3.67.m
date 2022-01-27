% Example 3.67
clc; clear all; clf

syms t w
a = 1; u(t) = heaviside(t);
x(t) = exp(-a*t)*u(t);
Sx(w) = 1/(a^2 + w^2);       % ����������� �������� ������
Rx(t) = ifourier(Sx(w), t);  % ����������� �������������� 
Ex = subs(Rx(t), t, 0)       % ����������� ���������

