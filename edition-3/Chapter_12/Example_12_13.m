% Example 12.13

L = 10; n = [0:1:L]; x = 0.9 .^ n;  % Αρχική ακολουθία x[n]

% Κυκλική μετατόπιση y[n] = x[[nm] mod N]
n0 = 8;  	% Μετατόπιση σημείων
N = 15; 	% Μήκος ακολουθίας
x = [x zeros(1, N-L-1)];
n = [0:1:N-1]; 
y = x(mod(n-n0, N)+1);

% Σχεδίαση ακολουθιών x[n] και y[n]
figure(1); subplot(121);stem(n,x);title('Αρχική ακολουθία x[n]'); grid on
subplot(122);stem(n,y);title('Κυκλικά μετατοπισμένη ακολουθία,n0=8, N=15'); grid on

% Υπολογισμός DFT ακολουθιών x[n] και y[n]
k=[0:N-1]; X = fft(x,N); Y = fft(y,N);

% Σχεδίαση πραγματικού & φανταστικού μέρους DFT X[k] και Y[k]
figure(2); subplot(221); stem(k,abs(X)); title('Μέτρο |X[k]|'); grid on
subplot(222); stem(k,angle(X)); title('Φάση <X[k]'); grid on
subplot(223); stem(k,abs(Y)); title('Μέτρο |Y[k]|'); grid on
subplot(224); stem(k,angle(Y)); title('Φάση <Y[k]'); grid on