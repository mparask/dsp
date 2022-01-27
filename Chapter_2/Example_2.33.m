% Example 2.33
clc; clear all;

Step = 0.01; t = 0 : Step : 2;
lt = length(t); a = -2; 
x = sin(2*pi*t) .* ones(1, lt);
h1 = exp(-2*t) .* ones(1, lt);
h2 = exp(-t) .* ones(1, lt);
hpar = (1 - a*conv(h1, h2) * Step);
h1( lt+1 : 2*lt-1 ) = 0; 
heq = h1 ./ hpar;
y = conv(x, heq) * Step;
ty = 0 : Step : 3*2;
subplot(211);  plot(t, x); xlim([0 6]); grid on
subplot(212);  plot(ty, y, 'r'); xlim([0 6]); grid on



