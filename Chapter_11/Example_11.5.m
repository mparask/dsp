% Example 11.5
clc; clear all; clf

Fs = 10000; % Συχνότητα δειγματοληψίας
fp = 1500;  % Συχνότητα αποκοπής ζώνης διέλευσης
fs = 2000;  % Συχνότητα αποκοπής ζώνης αποκοπής
dp = 0.001; % Απόκλιση στη ζώνη διέλευσης   
ds = 0.1;   % Απόκλιση στη ζώνη αποκοπής

F = [fp fs]; A = [1 0]; Deviation = [dp ds]; 

% Υπολογισμός βέλτιστης τάξης 
[N, Fo, Ao, Weights] = firpmord(F, A, Deviation, Fs)

% Υπολογισμός h[n] με Parks-McClellan
h = firpm(N, Fo, Ao, Weights);  

% Σχεδιασμός κρουστικής απόκρισης FIR φίλτρου
n = 0:1:N;  figure(1); stem(n, h); grid on; 
title('Κρουστική απόκριση FIR φίλτρου')

% Σχεδιασμός απόκρισης συχνότητας FIR φίλτρου
NFFT = 512; M = NFFT/2 + 1;
figure(2); freqz(h, 1, NFFT, Fs); axis([0, Fs/2 -60 10])
title('Aπόκριση συχνότητας FIR φίλτρου')
