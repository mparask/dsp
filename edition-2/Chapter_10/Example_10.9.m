% Example 10.9

% ���������� ���������� x[n]
N = 10; n = [0:N]; x = 0.58 .^ n;

% ������� ���������� y[n] = x[n mod 11]
y = x(mod(-n,N+1) + 1);

% �������� ���������� x[n] ��� y[n]
figure(1); subplot(121); stem(n,x); title('��������� x[n]'); grid on
subplot(122); stem(n,y); title('������� ���������� y[n]=x[[-n]]_1_1'); grid on 
 
% ����������� DFT ���������� x[n] ��� y[n]
k=[0:N]; X = fft(x,N+1); Y = fft(y,N+1);

% �������� ����������� & ����������� ������ DFT X[k] ��� Y[k]
figure(2); 
subplot(221); stem(k,real(X)); title('���������� ����� X[k]'); grid on
subplot(222); stem(k,imag(X)); title('���������� ����� X[k]'); grid on
subplot(223); stem(k,real(Y)); title('���������� ����� Y[k]'); grid on
subplot(224); stem(k,imag(Y)); title('���������� ����� Y[k]'); grid on