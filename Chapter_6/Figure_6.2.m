% Figure 6.2

% ������� �������� ������
n = -10:10;

% ������� ������� A
A = 1;

% ������� ����� ��� (�)
a1 = 0.8;
a2 = 1.5;
a3 = -0.8;
a4 = -1.5;

% ���������� ��������� �������
x1 = A * a1 .^n; 
x2 = A * a2 .^n;
x3 = A * a3 .^n; 
x4 = A * a4 .^n; 

% �������� A a^n
subplot(221); stem(n, x1); title('0<�<1'); grid on
subplot(222); stem(n, x2); title('�>1'); grid on
subplot(223); stem(n, x3); title('-1<�<0'); grid on
subplot(224); stem(n, x4); title('�<-1'); grid on