% Example 1.10

syms t
u(t) = heaviside(t); % Ορισμός u(t)
% Δημιουργία σήματος x(t)
x1(t) = (2*t+2) *( u(t+1) - u(t) ); 
x2(t) = (2-t) * ( u(t) - u(t-2) ); 
x(t) = x1(t) + x2(t);

% Δημιουργία σημάτων y1(t) έως y6(t)
y1(t) = x(-t);  y2(t) = x(t+1);  
y3(t) = x(2*t); y4(t) = x(t/2);  
y5(t) = x(1-t); y6(t) = x(2*t-2);

% Σχεδιασμός διαγραμμάτων
figure(1); 
subplot(311); ezplot(x); grid on; axis([-2 4 0 2]);   
subplot(312); ezplot(y1); grid on; axis([-2 4 0 2]);   
subplot(313); ezplot(y2); grid on; axis([-2 4 0 2]);

figure(2); 
subplot(411); ezplot(y3); grid on; axis([-2 4 0 2]);
subplot(412); ezplot(y4); grid on; axis([-2 4 0 2]);
subplot(413); ezplot(y5); grid on; axis([-2 4 0 2]);
subplot(414); ezplot(y6); grid on; axis([-2 4 0 2]);
