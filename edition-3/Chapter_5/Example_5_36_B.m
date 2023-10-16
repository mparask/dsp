% Example 5.36 (B)

clear all; clc

syms t w            
x(t) = 3*exp(-2*t) * heaviside(t)
X(w) = fourier(x(t), w)     % Μετασχηματισμός Fourier της εισόδου

numH = [ 6/j^2 2/j 15 ]; 
denH = [ 4/j^2 -3/j -5];
w = 0 : 0.1 : 10;
Hw = freqs(numH, denH, w);   	% Υπολογισμός απόκρισης συχνότητας

figure(1)       			% Απόκριση συχνότητας σε λογαριθμικό διάγραμμα
subplot(121); loglog(abs(Hw)); xlim([1,100]); title('Φάσμα Πλάτους'); grid on
subplot(122); loglog(angle(Hw)); xlim([1,100]);title('Φάσμα Φάσης');grid on

numX = [3]; denX = [1 2];
w = 0:0.1:10;
Xw = freqs(numX, denX, w);
% Μετασχηματισμός Fourier της εξόδου από τη σχέση Y(Ω) = Χ(Ω) Η(Ω)
Yw = Xw .* Hw;      

% Σχεδιασμός φασμάτων πλάτους εισόδου, φίλτρου και εξόδου
figure(3)   
subplot(131); loglog(abs(Xw)); axis([1, 100, 10^-1, 10^2]); title('X(Ω)');grid on
subplot(132); loglog(abs(Hw),'m'); axis([1, 100, 10^-1, 10^2]); title('Η(Ω)');grid on
subplot(133); loglog(abs(Yw),'r'); axis([1, 100, 10^-1, 10^2]); title('Υ(Ω)');grid on

