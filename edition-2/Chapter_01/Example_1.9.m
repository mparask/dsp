% Example 1.9

syms t
a1 = 1/2; a2 = 2;
x(t) = sin(2*pi*t); 	% ������� ��� x(t)
y1(t) = x(a1*t);		% ������� ��� y1(t)
y2(t) = x(a2*t);		% ������� ��� y2(t)

% ���������� ������������
subplot(311); ezplot(x(t)); axis([-2 2 -1.5 1.5]); grid on; 
subplot(312); ezplot(y1(t)); axis([-2 2 -1.5 1.5]); grid on;
subplot(313); ezplot(y2(t)); axis([-2 2 -1.5 1.5]); grid on;
