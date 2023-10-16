% Example 7.5 (B)

% x(n) = a^n * u(n);
a = 0.8; n = [0:10]; u = stepseq(0,0,10); x = (a.^n) .* u;

% Αποσύνθεση σε άρτιο  περιττό
[xe, xo, m] = evenodd(x, n);

% Σχεδιασμός διαγραμμάτων
subplot(311); stem(n,x); title('Σήμα x(n) = a^n * u(n)'); axis([-10,10,0,1.5]); grid on
subplot(312); stem(m,xe,'r'); title('Άρτιο μέρος x_e[n]'); axis([-10,10,0,1.5]); grid on
subplot(313); stem(m,xo,'m'); title('Περιττό μέρος x_o[n]'); axis([-10,10,-1,1]); grid on