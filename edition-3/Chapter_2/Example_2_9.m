% Example 2.9

syms t
u(t) = heaviside(t);
x(t) = u(t)-u(t-1);         % ������� ������� x(t)
y1(t) = exp(-2*t) * x(t);   % ����������� ������ y1(t) (�) �������
y2(t) = x(t+1)+0.5*x(t);    % ����������� ������ y2(t) (�) �������

figure(1); subplot(121); fplot(x(t), [-2 3]); ylim([-0.5 1.5]); grid on; title('x(t)')
subplot(122); fplot(y1(t), [-2 3],'m'); ylim([-0.5 1.5]); grid on; title('y_1(t)')
figure(2); subplot(121); fplot(x(t), [-2 3]); ylim([-0.5 1.5]); grid on; title('x(t)')
subplot(122); fplot(y2(t), [-2 3],'m'); ylim([-0.5 1.5]); grid on; title('y_2(t)')

