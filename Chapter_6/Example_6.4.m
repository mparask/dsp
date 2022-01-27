n = 0:40;

a = 0.9;
w0 = pi/8;

% ���������� ��������� �������
x =  a.^n .* exp(j*n*w0);

% �������� ��������� ������� �� ���������� �����
subplot(221); stem(n, real(x)); title('���������� �����'); grid on
subplot(223); stem(n, imag(x)); title('���������� �����'); grid on
% �������� ��������� ������� �� ������ �����
subplot(222); stem(n, abs(x)); title('�����'); grid on
subplot(224); stem(n, angle(x)); title('����'); grid on
