% Example 1.53

T0 = 10; D = 5; t = 0: 0.1 : 10; d = 5 : T0 : 5;
y = pulstran(t,d,'tripuls',D); plot(t, y); grid on; ylim([0,1.2])

A = 8; B = 4;
t = -A:0.01:A;  % Δημιουργία κλίμακας χρόνου
x1 = rectpuls(t,10); x2 = 3*rectpuls(t+1,2); x3 = 2*tripuls(t,2*1);
x = x1+x2+x3;

figure(1); % Σχεδιασμός σχημάτων
subplot(221); plot(t, x1,'b'); axis([-A A -B/5 B]); title('x_1(t)'); grid on
subplot(222); plot(t, x2,'m'); axis([-A A -B/5 B]); title('x_2(t)'); grid on
subplot(223); plot(t, x3,'r'); axis([-A A -B/5 B]); title('x_3(t)'); grid on
subplot(224); plot(t, x,'g'); axis([-A A -B/5 2*B]); title('x(t)'); grid on
