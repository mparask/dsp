% Example 11.21
clc; clear all;

% ������������ �������� ������� 
ws = [0.3*pi  0.7*pi]; 
wp = [0.4*pi  0.6*pi]; 
Rp = 1; As = 80;

% ����������� �������� ������� Chebyshev II
[N1, wn1] = cheb2ord(wp/pi, ws/pi, Rp, As);
[b1, a1] = cheby2(N1, As, wn1);

% ����������� �������� ����������� ������� 
[N2, wn2] = ellipord(wp/pi, ws/pi, Rp, As);
[b2, a2] = ellip(N2, Rp, As, wn2);

% ��������� ��������� �������� �������
[H1, w1] = freqz(b1, a1, 512);
[H2, w2] = freqz(b2, a2, 512);

% ���������� �������� �������� �������
subplot(121); plot(w1/pi, 20*log10(abs(H1))); grid on; ylim([-120, 10]);
xlabel('��������� (Hz)'), ylabel('������ (dB)');
title('������� ������ Chebyshev I'); 

subplot(122); plot(w2/pi, 20*log10(abs(H2))); grid on; ylim([-120, 10]);
xlabel('��������� (Hz)'), ylabel('������ (dB)');
title('���������� ������� ������'); 
