% Example 9.6 (�)

clf; clc; clear all

n=[-5:5]; x=[0,0,0,0,0,1,1,1,1,0,0];

N = 20;
w = [-pi:pi/N:pi];

X = 1 + exp(-j*w) + exp(-j*2*w) + exp(-j*3*w);

% ���������� ������������
subplot(311); stem(n,x); grid; xlim([-5,5]); ylim([-0.2 1.2]);
xlabel('������ [n]'); title('x[n]=u[n]-u[n-4]'); 

% ���������� �������� �������
subplot(312); plot(w/pi, abs(X)); grid; xlim([-1,1]); ylim([0 5]);
xlabel('��������� [-�,�]'); title('����� |X(e^j^�)|'); 

subplot(313); plot(w/pi, angle(X)); grid; xlim([-1,1]); ylim([-3 3]);
xlabel('��������� [-�,�]'); title('���� <X(e^j^�)'); 
