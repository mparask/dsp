% Example 1.42

syms t
u(t) = heaviside(t);
r(t) = t * u(t);
x(t) = r(t+2) - 2*r(t+1) + 2*r(t) - r(t-1);
x1(t) = x(t) * u(t); 
x2(t) = x(-t) * u(t);

% Σχεδιασμός διαγραμμάτων
subplot(221); fplot(x(t),'b'); grid on; xlim([-2 2]);title('x(t)')
subplot(222); fplot(x(-t),'m'); grid on; xlim([-2 2]);title('x(-t)')
subplot(223); fplot(x1(t),'r'); grid on; xlim([-2 2]);title('x1(t)')
subplot(224); fplot(x2(t),'g'); grid on; xlim([-2 2]);title('x2(t)')
