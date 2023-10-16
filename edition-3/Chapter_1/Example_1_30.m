% Example 1.30
% 
syms t
u(t) = heaviside(t); 
p(t) = u(t) - u(t-1);
x = cos(sym(2*pi*t)) * p(t)
xa= (sym(cos(2*pi*t)) - 1) * p(t);
xb = p(t);

% Σχεδιασμός διαγραμμάτων
subplot(131); fplot(x,'b'); grid on; axis([-0.5 1.5 -2 2]); title('x(t)')
subplot(132); fplot(xa,'m'); grid on; axis([-0.5 1.5 -2 2]); title('x_a(t)') 
subplot(133); fplot(xb,'r'); grid on; axis([-0.5 1.5 -2 2]); title('x_b(t)')
