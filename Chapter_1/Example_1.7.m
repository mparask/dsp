% Example 1.7

syms t
u(t) = heaviside(t);    % Ορισμός του u(t)
x(t) = exp(-t) * u(t);  % Ορισμός του x(t)
y1(t) = x(t-1);         % Ορισμός του y1(t)
y2(t) = x(t+1);         % Ορισμός του y2(t)

% Σχεδιασμός διαγραμμάτων
subplot(311); ezplot(x(t)); grid on; axis([-4 4 0 1]);   
subplot(312); ezplot(y1(t)); grid on; axis([-4 4 0 1]);   
subplot(313); ezplot(y2(t)); grid on; axis([-4 4 0 1]);     
