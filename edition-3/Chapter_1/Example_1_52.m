% Example 1.52

t = -5:0.01:5;  % Δημιουργία κλίμακας χρόνου
x1 = rectpuls(t,2);     % x1(t)
x2 = rectpuls(t,4);     % x2(t)
x3 = tripuls(t,2*1);    % x3(t)
y = x1+x2;      % y(t)=x1(t)+x2(t)
w = x1+x3;      % w(t)=x1(t)+x3(t)
z = x2-x1-x3;   % z(t)=x2(t)-x1(t)-x3(t)

figure(1)   % Σχεδιασμός σχημάτων
subplot(231); plot(t, x1); axis([-5 5 -1 3]); title('x_1(t)'); grid on
subplot(232); plot(t, x2); axis([-5 5 -1 3]); title('x_2(t)'); grid on
subplot(233); plot(t, x3); axis([-5 5 -1 3]); title('x_3(t)'); grid on
subplot(234); plot(t, y,'m'); axis([-5 5 -1 3]); title('y(t)'); grid on
subplot(235); plot(t, w,'r'); axis([-5 5 -1 3]); title('w(t)'); grid on
subplot(236); plot(t, z,'g'); axis([-5 5 -1 3]); title('z(t)'); grid on
