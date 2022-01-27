% Example 1.42
clc; clear all;

T0 = 10; D = 5;
t = 0: 0.1 : 10;
d = -5 : T0 : 5;
y = pulstran(t,d,'tripuls',D);
plot(t, y); grid on; ylim([0,1.2])
