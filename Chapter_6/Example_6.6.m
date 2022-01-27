% Example 6.6

n = 0:60; % ������� �������� ������

% ���������� �������
x1 = cos(0.25*pi*n);
x2 = sin(pi+0.5*n);
x3 =  exp(j*pi*n/8).*cos(pi*n/11);

% �������� ������������� ����������
subplot(311); stem(n, x1); title('x1[n]'); grid on
subplot(312); stem(n, x2); title('x2[n]'); grid on
subplot(313); stem(n, x3); title('x3[n]'); grid on