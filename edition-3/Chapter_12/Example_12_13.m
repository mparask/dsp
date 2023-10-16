% Example 12.13

L = 10; n = [0:1:L]; x = 0.9 .^ n;  % ������ ��������� x[n]

% ������� ���������� y[n] = x[[nm] mod N]
n0 = 8;  	% ���������� �������
N = 15; 	% ����� ����������
x = [x zeros(1, N-L-1)];
n = [0:1:N-1]; 
y = x(mod(n-n0, N)+1);

% �������� ���������� x[n] ��� y[n]
figure(1); subplot(121);stem(n,x);title('������ ��������� x[n]'); grid on
subplot(122);stem(n,y);title('������� ������������� ���������,n0=8, N=15'); grid on

% ����������� DFT ���������� x[n] ��� y[n]
k=[0:N-1]; X = fft(x,N); Y = fft(y,N);

% �������� ����������� & ����������� ������ DFT X[k] ��� Y[k]
figure(2); subplot(221); stem(k,abs(X)); title('����� |X[k]|'); grid on
subplot(222); stem(k,angle(X)); title('���� <X[k]'); grid on
subplot(223); stem(k,abs(Y)); title('����� |Y[k]|'); grid on
subplot(224); stem(k,angle(Y)); title('���� <Y[k]'); grid on