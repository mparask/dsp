% Example 4.49 - Δημιουργία σχήματος 4.45

fs = 1000; Ts=1/fs;        % Sampling frequency (samples/sec)
t = -2:Ts:2;
x = sign(t);
figure(1); plot(t,x); ylim([-2,2]);grid
