% Example 1.45

A = 2; 

% ������� ����� �������� ������ (�)
T1 = -1.5; T2 = -5; T3 = 1.5; T4 = 5;
t = 0 : 0.1 : 15;

% ����������� x(t) ��� ��� ����� ��� �
x1 = A * exp(-t/T1); 
x2 = A * exp(-t/T2);
x3 = A * exp(-t/T3); 
x4 = A * exp(-t/T4);

% �������� ������������
subplot(221); plot(t, x1); grid on;
subplot(222); plot(t, x2); grid on; 
subplot(223); plot(t, x3); grid on;
subplot(224); plot(t, x4); grid on; 