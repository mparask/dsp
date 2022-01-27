% Example 9.6 (α)

clf; clc; clear all

n=[-5:5]; x=[0,0,0,1,1,1,1,0,0,0,0];

N = 20;
w = [-pi:pi/N:pi];

X = exp(j*2*w) + exp(j*w) + 1 + exp(-j*w);

% Σχεδιασμός κυματομορφής
subplot(311); stem(n,x); grid; xlim([-5,5]); ylim([-0.2 1.2]);
xlabel('Χρόνος [n]'); title('x[n]=u[n+2]-u[n-2]'); 

% Σχεδιασμός φασμάτων πλάτους
subplot(312); plot(w/pi, abs(X)); grid; xlim([-1,1]); ylim([0 5]);
xlabel('Συχνότητα [-π,π]'); title('Μέτρο |X(e^j^ω)|'); 

subplot(313); plot(w/pi, angle(X)); grid; xlim([-1,1]); ylim([-3 3]);
xlabel('Συχνότητα [-π,π]'); title('Φάση <X(e^j^ω)'); 
