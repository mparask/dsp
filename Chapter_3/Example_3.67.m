% Example 3.67
clc; clear all; clf

syms t w
a = 1; u(t) = heaviside(t);
x(t) = exp(-a*t)*u(t);
Sx(w) = 1/(a^2 + w^2);       % Υπολογισμός φάσματος ισχύος
Rx(t) = ifourier(Sx(w), t);  % Υπολογισμός αυτοσυσχέτισης 
Ex = subs(Rx(t), t, 0)       % Υπολογισμός ενέργειας

