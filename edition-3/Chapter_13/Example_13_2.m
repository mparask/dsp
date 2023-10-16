% Example 13.2

clear all; clc

N = 64; 
wc = 0.25*pi    % Τάξη φίλτρου και συχνότητα αποκοπής
n = -1:1:N-2;   % Κλίμακα χρόνου
w = 0:0.01:pi; 	% Κλίμακα συχνότητας

% Δημιουργία και σχεδίαση κρουστικής απόκρισης ιδανικού φίλτρου
hd = imp_resp(wc,N);
figure(1); stem(n, hd); grid on; title('Κρουστική απόκριση ιδανικού φίλτρου')

% Δημιουργία παραθύρων, κρουστικών αποκρίσεων και αποκρίσεων συχνότητας
w1 = boxcar(N)';  h1 = hd.*w1; H1 = freqz(h1,1,w); % Ορθογώνιο παράθυρο
w2 = bartlett(N)';h2 = hd.*w2; H2 = freqz(h2,1,w); % Παράθυρο Bartlett
w3 = hanning(N)'; h3 = hd.*w3; H3 = freqz(h3,1,w); % Παράθυρο Hanning
w4 = hamming(N)'; h4 = hd.*w4; H4 = freqz(h4,1,w); % Παράθυρο Hamming
w5 = blackman(N)';h5 = hd.*w5; H5 = freqz(h5,1,w); % Παράθυρο Blackman

% Σχεδιασμός αποκρίσεων συχνότητας σε ημιλογαριθμική κλίμακα 
figure(2); semilogy(w,abs(H1),'c'); hold on; grid on; semilogy(w,abs(H2),'b'); 
semilogy(w,abs(H3),'m'); semilogy(w,abs(H4),'r'); semilogy(w,abs(H5),'g'); 
legend('Rectangular','Bartlett','Hanning','Hamming','Blackman'); hold off

% Σχεδιασμός αποκρίσεων συχνότητας σε γραμμική κλίμακα
figure(3); plot(w,abs(H1),'c'); hold on; grid on; plot(w,abs(H2),'b'); 
plot(w,abs(H3),'m'); plot(w,abs(H4),'r'); plot(w,abs(H5),'g')
legend('Rectangular','Bartlett','Hanning','Hamming','Blackman'); hold off