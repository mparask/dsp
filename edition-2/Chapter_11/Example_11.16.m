% Example 11.16
clc; clear all; clf

% Προδιαγραφές ψηφιακού φίλτρου 
wp = 0.3*pi; Rp = 0.5; ws = 0.45*pi; As = 15; 

% Υπολογισμός πρότυπου αναλογικού φίλτρου Butterworth
Ts = 3; Wp = wp/Ts; Ws = ws/Ts; 

% Περίοδος και συχνότητα δειγματοληψίας
Ts = 0.1; Fs = 1/Ts; 

% Υπολογισμός ψηφιακού φίλτρου με πρότυπο Butterworth
[N1, Wn1] = buttord(Wp, Ws, Rp, As);
[b1, a1] = butter(N1, Wn1);
[bz1, az1] = impinvar(b1, a1, Fs)

% Υπολογισμός ψηφιακού φίλτρου με πρότυπο Chebyshev I
[N2, Wn2] = cheb1ord(Wp, Ws, Rp, As);
[b2, a2] = cheby1(N2, As, Wn2);
[bz2, az2] = impinvar(b2, a2, Fs)

% Υπολογισμός ψηφιακού φίλτρου με πρότυπο Chebyshev II
[N3, Wn3] = cheb2ord(Wp, Ws, Rp, As);
[b3, a3] = cheby2(N3, As, Wn3);
[bz3, az3] = impinvar(b3, a3, Fs)

% Υπολογισμός ψηφιακού φίλτρου με πρότυπο ελλειπτικό
[N4, Wn4] = ellipord(Wp, Ws, Rp, As);
[b4, a4] = ellip(N4, Rp, As, Wn4);
[bz4, az4] = impinvar(b4, a4, Fs)
