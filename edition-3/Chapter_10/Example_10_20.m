% Example 10.20
clear all; clc

x = [zeros(1,100), ones(1,10), zeros(1,100)]; % Σήμα x[n]
N = length(x);              % Πλήθος τιμών σημάτων x[n], c[n], y[n]
n = -N/2:1:N/2-1;           % Ορισμός κλίμακας χρόνου
c = cos(0.7*n);             % Σήμα c[n] = cos(2n)
y = x.*c;                   % Σήμα y[n] = x[n] c[n]

% Σχεδιασμός σημάτων x[n], c[n], y[n] με περιοχή σχεδίασης [a,b]
figure(1); a = 90; b = 120;
subplot(131); stem(n(a:b),x(a:b)); ylim([-1.2,1.2]); title('x[n]'); grid on;
subplot(132); stem(n(a:b),c(a:b)); ylim([-1.2,1.2]); title('c[n]'); grid on;
subplot(133); stem(n(a:b),y(a:b)); ylim([-1.2,1.2]); title('y[n]'); grid on;

% Υπολογισμός φασμάτων πλάτους |Χ(e^jw)|, |C(e^jw)|, |Y(e^jw)|
X = fftshift(fft(x,N)); magX = abs(X); 
C = fftshift(fft(c,N)); magC = abs(C); 
Y = fftshift(fft(y,N)); magY = abs(Y); 

% Ορισμός κλίμακας συχνοτήτων και κανονικοποιημένης συχνότητας
w = 0:2*pi/N:2*pi-2*pi/N; w_norm = (w-pi)/pi;         

% Σχεδιασμός φασμάτων πλάτους |Χ(e^jw)|, |C(e^jw)|, |Y(e^jw)|
figure(2);
subplot(131); plot(w_norm, magX); grid on; xlabel('Συχνότητα (-π,π]'); title('|X(e^j^ω)|'); 
subplot(132); plot(w_norm, magC); grid on; xlabel('Συχνότητα (-π,π]'); title('|C(e^j^ω)|'); 
subplot(133); plot(w_norm, magY); grid on; xlabel('Συχνότητα (-π,π]'); title('|Y(e^j^ω)|'); 
