% Example 1.11

syms t
u(t) = heaviside(t);

% Δημιουργία σήματος x(t)
x1(t) = -3*t * u(-t);  
x2(t) = t * u(t);  
x(t) = x1(t) + x2(t);

xe(t) = 0.5 * [x(t) + x(-t)]; 	% Άρτια συνιστώσα
xo(t) = 0.5 * [x(t) - x(-t)];	% Περιττή συνιστώσα
subplot(311); ezplot(x);  grid on; axis([-3 3 0 5]);
subplot(312); ezplot(xe); grid on; axis([-3 3 0 5]);
subplot(313); ezplot(xo); grid on; axis([-3 3 -5 5]);
