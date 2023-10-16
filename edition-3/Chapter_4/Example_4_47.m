% Example 4.47

fs = 1000; Ts=1/fs;        % Sampling frequency (samples/sec)
t = -2:Ts:2;

w = 40e-3;

x = tripuls(t,w);

plot(t,x)
