% Example 5.2

fx = 1; % Συχνότητα σήματος x(t)
fN = 2*fx; % Συχνότητα Nyquist

% Δημιουργία σήματος συνεχούς χρόνου x(t)
t = 0 : 0.001 : 3; xa = 2 * cos(2*pi*fx*t + pi/4);
% Δειγματοληψία με ρυθμό fs > 2fN
Ts = 0.4; fs = 1/Ts;
nTs = 0 : Ts : 3; xs = 2 * cos(2*pi*fx*nTs + pi/4);
subplot(311); plot(t, xa); hold on; stem(nTs, xs, 'ro');
title('α. Δειγματοληψία με Ts=0.4'); grid on;

% Δειγματοληψία με ρυθμό fs = 2fN
Ts = 0.5; fs = 1/Ts;
nTs = 0 : Ts : 3; xs = 2 * cos(2*pi*fx*nTs + pi/4);
subplot(312); plot(t, xa); hold on; stem(nTs, xs, 'ro');
title('β. Δειγματοληψία με Ts=0.5'); grid on;

% Δειγματοληψία με ρυθμό fs < 2fN
Ts = 1; fs = 1/Ts;
nTs = 0 : Ts : 3; xs = 2 * cos(2*pi*fx*nTs + pi/4);
subplot(313); plot(t, xa); hold on; stem(nTs, xs, 'ro');
title('γ. Δειγματοληψία με Ts=1'); grid on;
