% Example 7.5 (A)

% x[n] = u[n];
n = [0:10]; u = stepseq(0,0,10);

% Αποσύνθεση σε άρτιο  περιττό 
[ue, uo, m] = evenodd(u, n);	

% Σχεδιασμός διαγραμμάτων
subplot(311); stem(n,u); title('Ακολουθία u[n]'); axis([-10,10,0,1.5]); grid on
subplot(312); stem(m,ue,'r'); title('Άρτιο μέρος u_e[n]'); axis([-10,10,0,1.5]); grid on
subplot(313); stem(m,uo,'m'); title('Περιττό μέρος u_o[n]'); axis([-10,10,1,1]); grid on