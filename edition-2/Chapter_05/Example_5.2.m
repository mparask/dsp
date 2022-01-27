% Example 5.2

fx = 1; % ��������� ������� x(t)
fN = 2*fx; % ��������� Nyquist

% ���������� ������� �������� ������ x(t)
t = 0 : 0.001 : 3; xa = 2 * cos(2*pi*fx*t + pi/4);
% ������������� �� ����� fs > 2fN
Ts = 0.4; fs = 1/Ts;
nTs = 0 : Ts : 3; xs = 2 * cos(2*pi*fx*nTs + pi/4);
subplot(311); plot(t, xa); hold on; stem(nTs, xs, 'ro');
title('�. ������������� �� Ts=0.4'); grid on;

% ������������� �� ����� fs = 2fN
Ts = 0.5; fs = 1/Ts;
nTs = 0 : Ts : 3; xs = 2 * cos(2*pi*fx*nTs + pi/4);
subplot(312); plot(t, xa); hold on; stem(nTs, xs, 'ro');
title('�. ������������� �� Ts=0.5'); grid on;

% ������������� �� ����� fs < 2fN
Ts = 1; fs = 1/Ts;
nTs = 0 : Ts : 3; xs = 2 * cos(2*pi*fx*nTs + pi/4);
subplot(313); plot(t, xa); hold on; stem(nTs, xs, 'ro');
title('�. ������������� �� Ts=1'); grid on;
