% Example 2.31
clc; clear all;

Step = 0.1; t = 0 : Step : 3;
x = exp(-2*t) .* ones(1,length(t));
h = 2*exp(-t) .* ones(1,length(t));
z = sin(2*pi*t) .* ones(1,length(t));
y1 = conv(x+z, h) *  Step;
y2 = conv(x, h) * Step + conv(z, h) * Step;
ty = 0 : Step : 2*max(t);
subplot(211);  plot(ty, y1); ylim([-1 2]); grid on
subplot(212);  plot(ty, y2,'r'); ylim([-1 2]); grid on


