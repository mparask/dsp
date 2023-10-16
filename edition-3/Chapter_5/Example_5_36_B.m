% Example 5.36 (B)

clear all; clc

syms t w            
x(t) = 3*exp(-2*t) * heaviside(t)
X(w) = fourier(x(t), w)     % ��������������� Fourier ��� �������

numH = [ 6/j^2 2/j 15 ]; 
denH = [ 4/j^2 -3/j -5];
w = 0 : 0.1 : 10;
Hw = freqs(numH, denH, w);   	% ����������� ��������� ����������

figure(1)       			% �������� ���������� �� ����������� ���������
subplot(121); loglog(abs(Hw)); xlim([1,100]); title('����� �������'); grid on
subplot(122); loglog(angle(Hw)); xlim([1,100]);title('����� �����');grid on

numX = [3]; denX = [1 2];
w = 0:0.1:10;
Xw = freqs(numX, denX, w);
% ��������������� Fourier ��� ������ ��� �� ����� Y(�) = �(�) �(�)
Yw = Xw .* Hw;      

% ���������� �������� ������� �������, ������� ��� ������
figure(3)   
subplot(131); loglog(abs(Xw)); axis([1, 100, 10^-1, 10^2]); title('X(�)');grid on
subplot(132); loglog(abs(Hw),'m'); axis([1, 100, 10^-1, 10^2]); title('�(�)');grid on
subplot(133); loglog(abs(Yw),'r'); axis([1, 100, 10^-1, 10^2]); title('�(�)');grid on

