% Figure 12.3

clf; clc; clear all

n=[-5:10]; x=[0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0];

N = length(n);
N = 32;
w = [0:pi/(N-1):pi];

X = fft(x,N);

% ���������� ������������
subplot(121); stem(n,x); grid; xlim([-5,10]); ylim([-0.2 1.2]);
xlabel('������ [n]'); title('x[n]=u[n]-u[n-4]'); 

% ���������� �������� �������
subplot(122); stem(w/pi, abs(X)); grid; xlim([0,1]); ylim([0 4]);
xlabel('��������� [0,�]'); title('����� |X(e^j^�)|'); 

