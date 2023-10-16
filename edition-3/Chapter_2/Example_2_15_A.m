% Example 2.15 (A)

syms t
u(t) = heaviside(t);    
t0 = 1;                % Ορισμός χρονικής ολίσθησης
x(t) = exp(-t)*u(t);   % Ορισμός σήματος δοκιμής (εισόδου)
y(t) = t*x(t);         % Υπολογισμός σήματος εξόδου
yt(t) = t*x(t-t0);     % Υπολογισμός εξόδου για ολισθημένη είσοδο κατά t0
yd(t) = y(t-t0);       % Υπολογισμός ολισθημένης εξόδου κατά t0

% Σχεδιασμός σημάτων εισόδου και εξόδου     
figure(1); subplot(231); fplot(x(t)); xlim([-1,7]); grid on; title('(α) x(t)')
subplot(232); fplot(y(t),'m'); xlim([-1,7]); grid on; title('(β) y(t)')

% Σχεδιασμός ολισθημένης εξόδου, ολισθημένης εισόδου, εξόδου για ολισθημένη είσοδο 
subplot(233); fplot(yd(t),'r'); xlim([-1,7]); grid on; title('(γ) y_d(t)')
subplot(235); fplot(x(t-t0),'m'); xlim([-1,7]);; grid on; title('(δ) x(t-t0)')
subplot(236); fplot(yt(t),'r'); xlim([-1,7]); grid on; title('(ε) y_t(t)')