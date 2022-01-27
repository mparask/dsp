% Example 2.32
clc; clear all;

Step = 0.01; t = 0 : Step : 2;
x = cos(2*pi*t) .* ones(1, length(t));
h1 = t .* ones(1, length(t));
h2 = t .^2 .* ones(1, length(t));
h3 = exp(-t) .* ones(1, length(t));
y1 = conv(x, h1) * Step;
y2 = conv(x, h2) * Step;
y = conv(y1+y2, h3) * Step;
ty = 0 : Step : 3*max(t);
subplot(211);  plot(t, x); xlim([0 6]); grid on
subplot(212);  plot(ty, y, 'r'); xlim([0 6]); grid on


