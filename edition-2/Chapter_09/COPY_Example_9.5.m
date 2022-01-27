% Example 9.5 (COPY)
% �(e^j� ) = 1/(1-a e^j�)
clf; clc; clear all

a = 0.7;    % ����������� ��������� ��� h[n] = a^n u[n]
N = 100;    % �: ������ ������� ����� ����������

w = [0:1:N] * (pi/N); % �������� �������� [0,�] �� � ������

% ����������� DTFT
H = exp(j*w) ./ ( exp(j*w) - a * ones(1, N+1));

% ���������� �������� ������� ��� �����
subplot(211), plot(w/pi, abs(H)); grid; xlim([0,1])
xlabel('��������� [0,�]'); title('����� DTFT |H(e^j^�)|'); 

subplot(212), plot(w/pi, angle(H)); grid; xlim([0,1])
xlabel('��������� [0,�]'); title('���� DTFT <H(e^j^�)'); 
