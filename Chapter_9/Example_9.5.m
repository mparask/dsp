% Example 9.5
clc; clf; clear all

N = 200;    % ������ �������������
M = 1;      % ������ ����������� 

% ����������� �������� [0, �] �� 200 ������
w = [0:1:M*N-1]*(pi/(N-1));

% ����������� DTFT ��� ��� ������
a = 0.7;
X = exp(j*w) ./ (exp(j*w) - a*ones(1,M*N));

% ����������� ������� ��� �����
magX = abs(X); angX = angle(X);

% ���������� ������� ��� �����
subplot(211); plot(w/pi,magX); grid
xlabel('��������� [0,�]'); title('����� �������'); ylabel('������')
subplot(212); plot(w/pi,angX); grid
xlabel('��������� [0,�]'); title('����� �����'); ylabel('Rad')