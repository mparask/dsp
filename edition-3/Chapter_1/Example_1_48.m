% Example 1.48

A = 2; W0 = 3*pi; phase = 0 ; 	% Ορισμός παραμέτρων
T = (2*pi)/W0;			% Υπολογισμός περιόδου
t = 0 : 0.01 : 4*T; 		% Δημιουργία κλίμακας χρόνου 4 περιόδων
x = A*exp(j*W0*t + phase);  	% Δημιουργία μιγαδικού εκθετικού σήματος

% Σχεδίαση μιγαδικού εκθετικού σήματος σε 3 διαστάσεις
figure(1); plot3(t, x, 'm'); grid on 

% Σχεδίαση πραγματικού % φανταστικού μέρους του μιγαδικού εκθετικού σήματος 
figure(2); subplot(211); plot(t, real(x)); grid on; axis([0 3 -3 3])
subplot(212); plot(t, imag(x), 'm'); grid on; axis([0 3 -3 3])