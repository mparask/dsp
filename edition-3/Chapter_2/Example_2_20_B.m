% Example 2.20 (B)

syms t; 
x(t) = sin(pi*t);     % ������� ������� ������� (�������)
y(t) = t^2 *x(t);     % ����������� ������� ������

% ���������� ������� ������� ��� ������     
subplot(121); fplot(x(t),[-10,10]); grid on; title('x(t)')
subplot(122); fplot(y(t),[-10,10],'m'); grid on; title('y(t)')