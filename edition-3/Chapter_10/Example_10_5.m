% Example 10.5
clf; clc; clear all

N = 100;    % ������ ������������� ����������
M = 6       % ������ ����������� (2x3 ��������)

% ����������� �������� [-�, �] �� 2*N ������
w = [-M*(N/2):1:M*(N/2)-1]*(pi/(N-1)); 

% ����������� DTFT ��� ��� ������
a = 0.7; X = exp(j*w) ./ (exp(j*w) - a*ones(1,M*N));

% ����������� ������� ��� �����
magX = abs(X); angX = angle(X); 

% ���������� ������� ��� �����
subplot(211); plot(w/pi,magX); grid
xlabel('��������� [-3�,3�]'); title('����� �������'); ylim([0,4]); ylabel('������')
subplot(212); plot(w/pi,angX, 'm'); grid;
xlabel('��������� [-3�,3�]'); title('����� �����'); ylabel('Rad')