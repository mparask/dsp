% Example 1.41
clc; clear all;

T0 = 10; D = 5;
t = 0 : 0.1 : 60;
d = 0 : T0 : 60;
y = pulstran(t, d, 'rectpuls', D);
plot(t, y); grid on; ylim([0,1.2])