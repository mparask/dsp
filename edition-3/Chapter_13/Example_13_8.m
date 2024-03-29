% Example 13.8
clear all; clc

Fs = 10000; Ts = 1/Fs; 		% Ορισμός συχνότητας και περιόδου δειγματοληψίας
M = 512; n = 0:1:M-1; 		% Δημιουργία κλίμακας χρόνου
f = 0 : Fs/(2*M) : (Fs/2)-1; 	% Δημιουργία κλίμακας συχνότητας
x = cos(2000*pi*n*Ts) + cos(6000*pi*n*Ts); 	% Δημιουργία σήματος εισόδου
X = freqz(x, 1, 512, Fs);    	% Υπολογισμός φάσματος του σήματος εισόδου

% Προδιαγραφές βαθυπερατού (LPF) FIR φίλτρου
fp = 1500;  	% Συχνότητα αποκοπής ζώνης διέλευσης
fs = 1700;  	% Συχνότητα αποκοπής ζώνης αποκοπής
dp = 0.001; 	% Απόκλιση στη ζώνη διέλευσης   
ds = 0.1;   	% Απόκλιση στη ζώνη αποκοπής
F = [fp fs]; A = [1 0]; Deviation = [dp ds]; 

% Εύρεση βέλτιστης τάξης φίλτρου
[N, Fo, Ao, W] = firpmord(F, A, Deviation, Fs)

% Εύρεση κρουστικής απόκρισης φίλτρου (ParksMcClellan)
h = firpm(N, Fo, Ao, W);

% Υπολογισμός απόκρισης συχνότητας φίλτρου
H = freqz(h, 1, 512, Fs);

% Υπολογισμός σήματος εξόδου
y = conv(h, x, 'full');

% Υπολογισμός φάσματος του σήματος εξόδου
Y = freqz(y, 1, 512, Fs);

% Σχεδιασμός φασμάτων πλάτους (εισόδου, φίλτρου, εξόδου)
figure(1); subplot(311); plot(f, abs(X)); title('Φάσμα εισόδου'); grid on
subplot(312); plot(f, abs(H)); title('Απόκριση συχνότητας φίλτρου'); grid on; 
subplot(313); plot(f, abs(Y)); title('Φάσμα εξόδου'); grid on