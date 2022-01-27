% Example 10.3

clf; clc; clear all

NDFT = 16;
n = [0:NDFT-1];
x = [1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0];

%wd = [0:pi/NDFT:2*pi];

XDFT = fft(x, NDFT);

% Σχεδιασμός φασμάτων πλάτους
subplot(211); stem(n, x); grid; ylim([0 1.2]);
xlabel('Χρόνος [n]'); title('Σήμα x[n]=u[n]-u[n-4]'); 

subplot(212); stem(abs(XDFT)); grid on; ylim([0 5]);
xlabel('Συχνότητα [k]'); title('Πλάτος |X(e^j^ω)|'); 
