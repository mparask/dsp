% Figure 10.5
% Η(e^jω ) = 1/(1-a e^jω)

clf; clc; clear all

N=20; n=[-N:N-1];
x=zeros(1,N); x=sin(pi*n/2)./(pi*n); x(N+1)=0.5;

w = [-75:1:74] * (pi/N); % Διαίρεση περιοχής [0,π] σε Ν σημεία

X = [zeros(1,66), ones(1,19), zeros(1,65)];

% Σχεδιασμός σχημάτων
subplot(121), plot(w/pi, X); grid; xlim([-1.5,1.5]); ylim([-0.2, 1.5])
xlabel('Συχνότητα [0,π]'); title('|X(e^j^ω)|'); 

subplot(122);stem(n,x); grid on; xlim([-N,N]); ylim([-0.2,0.6])
xlabel('Χρόνος'); title('Σήμα x[n]');