% Example 1.8

syms t; 
u(t) = heaviside(t);            % ������� u(t)
x(t) = exp(-t) * u(t);          % ������� x(t)
y1(t) = x(-t); y2(t) = x(1-t);  % ������� y1(t), y2(t)

% ���������� ������������
subplot(311); ezplot(x(t)); grid on; axis([-4 4 -0 1]);
subplot(312); ezplot(y1(t)); grid on; axis([-4 4 -0 1]);
subplot(313); ezplot(y2(t)); grid on; axis([-4 4 -0 1]);