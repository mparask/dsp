% Example 6.7 (b)

% x(n) = a^n * u(n);
a = 0.8; n = [0:10]; 
u = stepseq(0,0,10);
x = (a.^n) .* u;

% ���������� �� ����� ��� ������� �����
[xe, xo, m] = evenodd(x, n);

% ���������� ������������
subplot(311); stem(n, x); grid on 
title('���� x(n) = a^n * u(n)');
axis([-10,10,0,1.5]);

subplot(312); stem(m, xe); grid on
title('����� ����� x_e[n]')
axis([-10,10,0,1.5])

subplot(313); stem(m, xo); grid on
title('������� ����� x_o[n] ')
axis([-10,10,-1,1])