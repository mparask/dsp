% Παράδειγμα 11.2
clc; clear all; clf;

N = 64;         % Τάξη φίλτρου
n = 0:1:N-1;    % Κλίμακα χρόνου

wc = 0.25*pi;   % Συχνότητα αποκοπής
w = 0:0.01:pi;  % Κλίμακα συχνότητας

hd = imp_resp(wc,N);    % Κρουστική απόκριση ιδανικού φίλτρου

figure(3); stem(n, hd); grid on; ylim([-0.1, 0.3]);
title('Κρουστική απόκριση ιδανικού φίλτρου');

w1 = boxcar(N)';   h1 = hd.*w1; H1 = freqz(h1,1,w); % Ορθογώνιο παράθυρο
w2 = bartlett(N)'; h2 = hd.*w2; H2 = freqz(h2,1,w); % Παράθυρο Bartlett
w3 = hanning(N)';  h3 = hd.*w3; H3 = freqz(h3,1,w); % Παράθυρο Hanning
w4 = hamming(N)';  h4 = hd.*w4; H4 = freqz(h4,1,w); % Παράθυρο Hamming
w5 = blackman(N)'; h5 = hd.*w5; H5 = freqz(h5,1,w); % Παράθυρο Blackman

figure(1); 
semilogy(w,abs(H1),'c'); hold on; grid on; semilogy(w,abs(H2),'b'); 
semilogy(w,abs(H3),'m'); semilogy(w,abs(H4),'r'); semilogy(w,abs(H5),'g'); 
legend('Rectangular', 'Bartlett', 'Hanning', 'Hamming', 'Blackman'); hold off

figure(2); 
plot(w,abs(H1),'c'); hold on; grid on; plot(w,abs(H2),'b'); 
plot(w,abs(H3),'m'); plot(w,abs(H4),'r'); plot(w,abs(H5),'g')
legend('Rectangular', 'Bartlett', 'Hanning', 'Hamming', 'Blackman'); hold off