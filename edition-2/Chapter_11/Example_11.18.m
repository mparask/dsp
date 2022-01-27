% Example 11.18
clc; clf; clear all

% ����� ��������� ������
b = [3 7]; a = [1 4 3];
% ��������� ��������� ���������� �������
[Hs, Ws] = freqs(b, a, 512);  
% �������� �=2
T = 2; Fs = 1/T;
% ������� ����������� ���������������
[bz, az] = bilinear(b, a, Fs)
% ��������� ��������� �������� �������
[Hz, Wz] = freqz(bz, az, 512, Fs);
% ���������� �������� ���������� ��� �������� �������
figure(1); semilogx(Ws/(2*pi), 20*log10(abs(Hs)),'LineWidth',2); 
hold on; semilogx(Wz, 20*log10(abs(Hz)),'r--'); grid on;
xlabel('��������� (Hz)'), ylabel('������ (dB)');
legend('��������� ������','������� ������');

% ����������� H(z) �� ���� �����
H = tf(bz, az);
% ������ ����� ��� ��������� ��� H(z)
p = pole(H)
z = zero(H)

% ���������� ������������ ����� ��� ���������
figure(2); pzmap(H);
