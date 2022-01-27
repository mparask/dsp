% ���������� 11.2
clc; clear all; clf;

N = 64;         % ���� �������
n = 0:1:N-1;    % ������� ������

wc = 0.25*pi;   % ��������� ��������
w = 0:0.01:pi;  % ������� ����������

hd = imp_resp(wc,N);    % ��������� �������� �������� �������

figure(3); stem(n, hd); grid on; ylim([-0.1, 0.3]);
title('��������� �������� �������� �������');

w1 = boxcar(N)';   h1 = hd.*w1; H1 = freqz(h1,1,w); % ��������� ��������
w2 = bartlett(N)'; h2 = hd.*w2; H2 = freqz(h2,1,w); % �������� Bartlett
w3 = hanning(N)';  h3 = hd.*w3; H3 = freqz(h3,1,w); % �������� Hanning
w4 = hamming(N)';  h4 = hd.*w4; H4 = freqz(h4,1,w); % �������� Hamming
w5 = blackman(N)'; h5 = hd.*w5; H5 = freqz(h5,1,w); % �������� Blackman

figure(1); 
semilogy(w,abs(H1),'c'); hold on; grid on; semilogy(w,abs(H2),'b'); 
semilogy(w,abs(H3),'m'); semilogy(w,abs(H4),'r'); semilogy(w,abs(H5),'g'); 
legend('Rectangular', 'Bartlett', 'Hanning', 'Hamming', 'Blackman'); hold off

figure(2); 
plot(w,abs(H1),'c'); hold on; grid on; plot(w,abs(H2),'b'); 
plot(w,abs(H3),'m'); plot(w,abs(H4),'r'); plot(w,abs(H5),'g')
legend('Rectangular', 'Bartlett', 'Hanning', 'Hamming', 'Blackman'); hold off