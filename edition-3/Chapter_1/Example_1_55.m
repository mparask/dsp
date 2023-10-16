% Example 1.55

T0 = 10; D = 5;
t = -30 : 0.1 : 30; d = -30 : T0 : 30; 
y = pulstran(t, d, 'tripuls', D); plot(t, y); grid on; ylim([0,1.2])