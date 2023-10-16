% Example 5.36 (A)
 
clear all; clc

numH = [ 6/j^2 2/j 15 ]; 
denH = [ 4/j^2 -3/j -5];
w = 0 : 0.1 : 10;
Hw = freqs(numH, denH, w);   	% ����������� ��������� ����������

figure(1)       			% �������� ���������� �� ����������� ���������
subplot(121); loglog(abs(Hw)); xlim([1,100]); title('����� �������'); grid on
subplot(122); loglog(angle(Hw),'m'); xlim([1,100]);title('����� �����');grid on
