% Example 2.46

syms t
% ���������� ������� h(t) ��� x(t) ��� �������� ������ th, tx
u = heaviside(t);
x(t) = u(t)-u(t-10);
s = 1 - exp(-0.1*t);
% ���������� ������������� (���������)
subplot(121); fplot(t, x); xlim([0, 15]); grid on; title('(�) u(t)')
subplot(122); fplot(t, s, 'm'); xlim([0, 15]); grid on; title('(�) s(t)')