% Example 10.4 (b)

clf; clc; clear all

NDTFT = 512;
wa = [0:pi/NDTFT:2*pi];

XDTFT = exp(0) + exp(-j*wa) + exp(-j*2*wa) + exp(-j*3*wa);

NDFT = 32;
x = [1,1,1,1,0,0,0,0];
wd = [0:pi/NDFT:2*pi];

XDFT = fft(x, NDFT);

% ���������� �������� �������
figure (1); hold off; plot(wa/pi, abs(XDTFT), 'r'); grid; xlim([0,2]); ylim([0 5]);
xlabel('��������� [0,2�]'); title('����� |X(e^j^�)|'); 
hold on
stem(wd(1:2:2*NDFT)/pi, abs(XDFT)); grid on; xlim([0,2]); ylim([0 5]);

% ���������� �������� �����
figure (2); hold off; plot(wa/pi, angle(XDTFT), 'r'); grid; xlim([0,2]); ylim([-3 3]);
xlabel('��������� [0,2�]'); title('���� <X(e^j^�)'); 
hold on
stem(wd(1:2:2*NDFT)/pi, angle(XDFT)); grid on; xlim([0,2]); ylim([-3 3]);