% Example 8.38 (Part B - Figure 8.13)

% y[n]= (1/M) ( x[n] + x[n-1] + ... x[n-(M-1)] )

% Τάξη φίλτρου μέσου όρου
M1 = 4; M2 = 8;

% Ορισμός κλίμακας χρόνου
N = 100; n = 0:N-1;

% Δημιουργία "καθαρού" σήματος s[n]
s = cos(pi*n/8);

% Δημιουργία θορύβου e[n]
noise = random('normal', 0, 0.5, 1, N);

% noise = 0.5*randn(1, N)

% Δημιουργία σήματος με θόρυβο x[n]
x = s + noise;

% Υπολογισμός φίλτρου μέσης τιμής
a = [1];
b1 = (1/M1)*ones(1, M1);
b2 = (1/M2)*ones(1, M2);

y1 = filter(b1, a, x);
y2 = filter(b2, a, x);


figure(1)
subplot(211); 
plot(n, x); hold on; plot(n, y1, 'LineWidth',2 ); legend('x[n]', 'y1[n]')
ylim([-2, 2]);grid on

hold off;
subplot(212); 
plot(n, x); hold on; plot(n, y2,'LineWidth',2); legend('x[n]', 'y2[n]')
ylim([-2, 2]);grid on
