% Example 3.66
clc; clear all; clf

% Part A

numH = [ 6/j^2 2/j 15 ]; 
denH = [ 4/j^2 -3/j -5];
w = 0 : 0.1 : 10;
Hw = freqs(numH, denH, w);  % Υπολογισμός απόκρισης συχνότητας
figure(1)       % Απόκριση συχνότητας σε λογαριθμικό διάγραμμα
subplot(211); loglog(abs(Hw)); xlim([1, 100]); grid on
subplot(212); loglog(angle(Hw)); xlim([1, 100]);grid on

% Part B

syms t w            
x(t) = exp(-2*t) * heaviside(t)
X(w) = fourier(x(t), w)     % Μετασχηματισμός Fourier της εισόδου

numX = [0.5]; denX = [1 2];
w = 0:0.1:10;
Xw = freqs(numX, denX, w);

% Μετασχηματισμός Fourier της εξόδου από τη σχέση Y(ω) = Χ(ω) Η(ω)
Yw = Xw .* Hw;      

% Σχεδιασμός φασμάτων πλάτους εισόδου, φίλτρου και εξόδου
figure(3)   
subplot(311); loglog(abs(Xw)); axis([1, 100, 10^-2, 10^2]); grid on
subplot(312); loglog(abs(Hw)); axis([1, 100, 10^-2, 10^2]); grid on
subplot(313); loglog(abs(Yw)); axis([1, 100, 10^-2, 10^2]); grid on
