% Example 7.12

n = -10:10;                         	% ������� �������� ������
d = zeros(size(n)); d(n==0) = 1; 	% ���������� �[n]
u = zeros(size(n)); u(n>=0) = 1; 	% ���������� u[n]
r = zeros(size(n)); r = n.*(n>=0); 	% ���������� r[n]
subplot(311); stem(n, d);           	% �������� �[n]
axis([-10 10 -0.5 1.5]); title('��������� ������ �[n]'); grid on
subplot(312); stem(n, u);           	% �������� u[n]
axis([-10 10 -0.5 1.5]); title('��������� ���� u[n]'); grid on
subplot(313); stem(n, r);           	% �������� r[n]
axis([-10 10 -0.5 10]); title('��������� ����� r[n]'); grid on
