% Παράδειγμα 11.3
clc; clear all; clf;

% Τάξη φίλτρου
N1 = 8; N2 = 16; N3 = 32; N4 = 64;

% Κλίμακα χρόνου
n1 = 0:1:N1-1;  n2 = 0:1:N2-1;  n3 = 0:1:N3-1;  n4 = 0:1:N4-1;

wc = 0.25*pi;   % Συχνότητα αποκοπής
w = 0:0.01:pi;  % Κλίμακα συχνότητας

% Κρουστική απόκριση ιδανικού φίλτρου
hd1 = imp_resp(wc,N1);  hd2 = imp_resp(wc,N2); 
hd3 = imp_resp(wc,N3);  hd4 = imp_resp(wc,N4);

w1 = hanning(N1)';   h1 = hd1.*w1; H1 = freqz(h1,1,w); % N = 8
w2 = hanning(N2)';   h2 = hd2.*w2; H2 = freqz(h2,1,w); % N = 16
w3 = hanning(N3)';   h3 = hd3.*w3; H3 = freqz(h3,1,w); % N = 32
w4 = hanning(N4)';   h4 = hd4.*w4; H4 = freqz(h4,1,w); % N = 64

figure(1); 
semilogy(w,abs(H1),'c'); hold on; grid on; semilogy(w,abs(H2),'b'); 
semilogy(w,abs(H3),'m'); semilogy(w,abs(H4),'r'); 
legend('N = 8', 'N = 16', 'N = 32', 'N = 64'); hold off