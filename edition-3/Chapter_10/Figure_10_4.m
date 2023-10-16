% Figure 10.4

clf; clc; clear all

n=[-5:9]; x=[0,0,0,0,0,1,1,1,1,1,0,0,0,0,0];

N = 20;
w = [-pi:pi/N:pi];

X = 1 + exp(-j*w) + exp(-2*j*w) + exp(-3*j*w) + exp(-4*j*w);

% Σχεδιασμός κυματομορφής
subplot(131); stem(n,x); grid; xlim([-5,10]); ylim([-0.2 1.2]);
xlabel('Χρόνος [n]'); title('x[n]=u[n]-u[n-5]'); 

% Σχεδιασμός φασμάτων πλάτους
subplot(132); plot(w/pi, abs(X)); grid; xlim([-1,1]); ylim([0 5]);
xlabel('Συχνότητα [-π,π]'); title('Μέτρο |X(e^j^ω)|'); 

subplot(133); plot(w/pi, angle(X),'m'); grid; xlim([-1,1]); ylim([-3 3]);
xlabel('Συχνότητα [-π,π]'); title('Φάση <X(e^j^ω)'); 
