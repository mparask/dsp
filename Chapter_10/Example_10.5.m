% Example 10.5
clf; clc; clear all

% ������� ������ DFT
N1 = 10; N2 = 100;

% ���������� ������� x[n] ��� 100 ������
n = [0:1:N2-1]; x = cos(5*pi*n/9) + cos(4*pi*n/9);

% ���������� ������� x1[n] ��� 10 ������
n1 = [0:1:N1-1]; x1 = x(1:1:10);
% ����������� DFT 10 �������
X1 = fft(x1, N1); 
% ������� �������� ����������
k1 = [0:1:N1-1]; w1 = pi/N1*k1;
% ���������� ������� ��� �������� �������
figure(1); subplot(211); stem(n1, x1); grid;
xlabel('������ [n]'); title('���� x1[n]'); 
subplot(212); stem(w1/pi, abs(X1)); grid on; xlim([0 1]);
xlabel('��������� [k]'); title('������ |X1[k]|'); 

% ���������� ������� x2[n] ��� 10 ������ ��� 90 ��������
x2 = [x1, zeros(1,N2-N1)];
% ����������� DFT 100 ������� �� zero padding
X2 = fft(x2, N2);
% ������� �������� ����������
k2 = [0:1:N2-1]; w2 = pi/N2*k2;
% ���������� ������� ��� �������� �������
figure(2); subplot(211); stem(n, x2); grid;
xlabel('������ [n]'); title('���� x2[n]'); 
subplot(212); stem(w2/pi, abs(X2)); grid on; xlim([0 1]);
xlabel('��������� [k]'); title('������ |X2[k]|'); 

% ����������� DFT 100 ������� �� ���������� ��������
X = fft(x, N2);
% ���������� ������� ��� �������� �������
figure(3); subplot(211); stem(n, x); grid;
xlabel('������ [n]'); title('���� x[n]'); 
subplot(212); stem(w2/pi, abs(X)); grid on; xlim([0 1]);
xlabel('��������� [k]'); title('������ |X[k]|');