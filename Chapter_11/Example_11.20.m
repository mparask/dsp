% Example 11.20
clc; clear all;

% ������������ �������� ������� 
ws = 0.6*pi; Rp = 1; wp = 0.7*pi; As = 60;

% ����������� �������� ������� Butterworth
[N1, wn1] = buttord(wp/pi, ws/pi, Rp, As);
[b1, a1] = butter(N1, wn1, 'high');

% ����������� �������� ������� Chabyshev I
[N2, wn2] = cheb1ord(wp/pi, ws/pi, Rp, As);
[b2, a2] = cheby1(N2, Rp, wn2, 'high');

% ��������� ��������� �������� �������
[H1, w1] = freqz(b1, a1, 512);
[H2, w2] = freqz(b2, a2, 512);

% ���������� �������� �������� �������
subplot(121); plot(w1/pi, 20*log10(abs(H1))); grid on; ylim([-150, 10]);
xlabel('��������� (Hz)'), ylabel('������ (dB)');
title('������� ������ Butterworth'); 

subplot(122); plot(w2/pi, 20*log10(abs(H2))); grid on; ylim([-150, 10]);
xlabel('��������� (Hz)'), ylabel('������ (dB)');
title('������� ������ Chebyshev I'); 
