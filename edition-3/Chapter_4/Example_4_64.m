% Example 4.64

syms t W
a = 1; u(t) = heaviside(t);
Sx(W) = 1/(a^2 + w^2);        % Υπολογισμός φάσματος ισχύος
Rxx(t) = ifourier(Sx(W), t);  % Υπολογισμός αυτοσυσχέτισης 
Ex = subs(Rxx(t), t, 0)       % Υπολογισμός ενέργειας