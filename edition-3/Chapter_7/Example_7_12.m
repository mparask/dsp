% Example 7.12

n = -10:10;                         	% Ορισμός κλίμακας χρόνου
d = zeros(size(n)); d(n==0) = 1; 	% Δημιουργία δ[n]
u = zeros(size(n)); u(n>=0) = 1; 	% Δημιουργία u[n]
r = zeros(size(n)); r = n.*(n>=0); 	% Δημιουργία r[n]
subplot(311); stem(n, d);           	% Σχεδίαση δ[n]
axis([-10 10 -0.5 1.5]); title('Μοναδιαίο δείγμα δ[n]'); grid on
subplot(312); stem(n, u);           	% Σχεδίαση u[n]
axis([-10 10 -0.5 1.5]); title('Μοναδιαίο βήμα u[n]'); grid on
subplot(313); stem(n, r);           	% Σχεδίαση r[n]
axis([-10 10 -0.5 10]); title('Μοναδιαία κλίση r[n]'); grid on
