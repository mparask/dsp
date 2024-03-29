% Example 7.16

n = 0:40; % ������� �������� ������

% ������� ���������� �, �0, �
A = 1; theta = 0; w0 = 2*pi/20; 

% ���������� ��������� �������
x1 =  A*sin(w0*n + theta);
x2 =  A*sin(w0*2*n + theta);
x3 =  A*sin(w0*6*n + theta);
x4 =  A*sin(w0*7*n + theta);

% �������� ������������� ����������
subplot(221); stem(n, x1); title('x1[n]'); ylim([-1.2, 1.2]); grid on
subplot(222); stem(n, x2); title('x2[n]'); ylim([-1.2, 1.2]); grid on
subplot(223); stem(n, x3); title('x3[n]'); ylim([-1.2, 1.2]); grid on
subplot(224); stem(n, x4); title('x4[n]'); ylim([-1.2, 1.2]); grid on
