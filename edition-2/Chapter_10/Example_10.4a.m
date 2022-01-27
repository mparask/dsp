% Example 10.4 (a)

clf; clc; clear all

N = 20;
w = [0:pi/N:2*pi];
X = 1 + exp(-j*w) + exp(-j*2*w) + exp(-j*3*w);

NN = 4;
ww = [0:pi/NN:2*pi];
XX = [4, 0, 0, 0];
    
% Σχεδιασμός φασμάτων πλάτους
figure(1); hold off; plot(w/pi, abs(X), 'r'); grid; xlim([0,2]); ylim([0 5]);
xlabel('Συχνότητα [0,2π]'); title('Μέτρο |X(e^j^ω)|'); grid on

hold on
stem(ww(1:2:8)/pi, abs(XX)); grid; xlim([0,2]); ylim([0 5]); grid on

