% Figure 10.5
% �(e^j� ) = 1/(1-a e^j�)

clf; clc; clear all

N=20; n=[-N:N-1];
x=zeros(1,N); x=sin(pi*n/2)./(pi*n); x(N+1)=0.5;

w = [-75:1:74] * (pi/N); % �������� �������� [0,�] �� � ������

X = [zeros(1,66), ones(1,19), zeros(1,65)];

% ���������� ��������
subplot(121), plot(w/pi, X); grid; xlim([-1.5,1.5]); ylim([-0.2, 1.5])
xlabel('��������� [0,�]'); title('|X(e^j^�)|'); 

subplot(122);stem(n,x); grid on; xlim([-N,N]); ylim([-0.2,0.6])
xlabel('������'); title('���� x[n]');