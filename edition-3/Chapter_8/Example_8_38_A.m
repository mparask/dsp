% Example 8.38 (Part A - Figure 8.12)

clc; clf; clear all

% Τάξη φίλτρου μέσου όρου
M = 4; 

% Ορισμός κλίμακας χρόνου
N = 40; n = 0:N-1;

% Δημιουργία "καθαρού" σήματος s[n]
s = cos(pi*n/8);

% Δημιουργία θορύβου e[n]
e = random('normal', 0, 0.4, 1, N);

% Δημιουργία σήματος με θόρυβο x[n]
x = s + e;

% Υπολογισμός φίλτρου μέσης τιμής
y(1) = (1/M) * x(1);
y(2) = y(1) + (1/M) * x(2);
y(3) = y(2) + (1/M) * x(3);
for i = 4:N
    Y = 0;
    for m = 0:M-1
        Y = Y + (1/M)*x(i-m);
    end
    y(i) = Y;
end

% Σχεδιασμός γραφικών παραστάσεων
figure(1);
subplot(211);stem(n,s);title('Καθαρό σήμα s[n]');grid on;ylim([-2,2]); 
subplot(212);stem(n,e);title('Θόρυβος e[n]'); grid on; ylim([-2,2]);
figure(2); 
subplot(211);stem(n,x);title('Σήμα με θόρυβο x[n]');grid on;ylim([-2,2]);
subplot(212);stem(n,y);title('Επεξεργασμένο σήμα y[n]');grid on;ylim([-2,2]);