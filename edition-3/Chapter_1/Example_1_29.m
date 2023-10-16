% Example 1.29
% 
syms t
u(t) = heaviside(t); 
x1 = u(t-1);
x2 = u(t+2);
x = x2-x1;

% Σχεδιασμός διαγραμμάτων
subplot(221); fplot(u,'b'); grid on; axis([-3 3 -0.5 1.5]); title('x(t)')
subplot(222); fplot(x1,'m'); grid on; axis([-3 3 -0.5 1.5]); title('u(t-1)') 
subplot(223); fplot(x2,'r'); grid on; axis([-3 3 -0.5 1.5]); title('u(t+2)')
subplot(224); fplot(x,'g'); grid on; axis([-3 3 -0.5 1.5]); title('x(t)')