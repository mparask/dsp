% Example 2.29
clc; clear all;

Step = 0.05; 
t = 0 : Step : 2;
x = sin(2*pi*t) .* ones(1, length(t));
h = cos(pi*t) .* ones(1, length(t));
ty = 0 : Step : 2*max(t);
y1 = conv(x, h) * Step;
y2 = conv(h, x) * Step;
subplot(211); plot(ty, y1); grid on
subplot(212); plot(ty, y2, 'r'); grid on

