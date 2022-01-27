% Example 11.13
clc; clear all; clf

% ������������ �������� ������� 
wp = 0.3*pi; Rp = 0.5; 
ws = 0.45*pi; As = 15; 

% ������������ �������� ���������� �������
Td = 3; Wp = wp/Td; Ws = ws/Td; 

% ����������� �������� ������� Butterworth
[N, Wn] = buttord(Wp, Ws, Rp, As)
[b, a] = butter(N, Wn);

% ��������� ��������� ���������� �������
[Hs, Ws] = freqs(b, a, 512);

% �������� ��� ��������� ��������������
Ts = 0.1; Fs = 1/Ts; 

% ������� ����������� ���������� ���������
[bz, az] = impinvar(b, a, Fs);

% ��������� ��������� �������� �������
[Hz, Wz] = freqz(bz, az, 512, Fs);

% ���������� �������� ���������� ��� �������� �������
figure(1);
semilogx(Ws/(2*pi), 20*log10(abs(Hs)),'LineWidth',2); hold on;
semilogx(Wz, 20*log10(abs(Hz)),'r--'); grid on;
xlabel('��������� (Hz)'), ylabel('������ (dB)');
legend('��������� ������','������� ������');