% Figure 12.3

clf; clc; clear all

n=[-5:10]; x=[0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0];

N = length(n);
N = 32;
w = [0:pi/(N-1):pi];

X = fft(x,N);

% Σχεδιασμός κυματομορφής
subplot(121); stem(n,x); grid; xlim([-5,10]); ylim([-0.2 1.2]);
xlabel('Χρόνος [n]'); title('x[n]=u[n]-u[n-4]'); 

% Σχεδιασμός φασμάτων πλάτους
subplot(122); stem(w/pi, abs(X)); grid; xlim([0,1]); ylim([0 4]);
xlabel('Συχνότητα [0,π]'); title('Μέτρο |X(e^j^ω)|'); 

