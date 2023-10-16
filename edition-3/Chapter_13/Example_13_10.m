% Example 13.10
 
% Υπολογισμός H(s) =  (2s^2 + 3s + 2) / ( 2s^3 + 6s^2 + 9s + 8)
b1 = [2 3 2]; a1 = [2 6 9 8]; 
H1 = tf(b1,a1), zeros1 = zero(H1), poles1 = pole(H1)

% Υπολογισμός H(s) = (2s^2  3s + 2) / (2s^3 + 6s^2  9s + 8)
b2 = [2 -3 2]; a2 = [-2 6 -9 8]; 
H2 = tf(b2,a2), zeros2 = zero(H2), poles2 = pole(H2)

% Υπολογισμός |H(Ω)|^2 = H(s) * H(s)
H = H1 * H2, zeros = zero(H), poles = pole(H)
subplot(131);pzmap(H,'r'); title('Πόλοι-μηδενικά H(jΩ)');axis([-2 2 -2 2]);
subplot(132);pzmap(H1);title('Πόλοι-μηδενικά H(s)'); axis([-2 2 -2 2]);
subplot(133);pzmap(H2);title('Πόλοι-μηδενικά H(s)'); axis([-2 2 -2 2]);
