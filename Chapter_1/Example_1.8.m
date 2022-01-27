% Example 1.8

syms t; 
u(t) = heaviside(t);            % Ορισμός u(t)
x(t) = exp(-t) * u(t);          % Ορισμός x(t)
y1(t) = x(-t); y2(t) = x(1-t);  % Ορισμός y1(t), y2(t)

% Σχεδιασμός διαγραμμάτων
subplot(311); ezplot(x(t)); grid on; axis([-4 4 -0 1]);
subplot(312); ezplot(y1(t)); grid on; axis([-4 4 -0 1]);
subplot(313); ezplot(y2(t)); grid on; axis([-4 4 -0 1]);