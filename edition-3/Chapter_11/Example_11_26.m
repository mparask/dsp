% Example 11.26

% FIR: y[n] = x[n] + 2x[n-2] - 0.5x[n-4]
a = 1;  b = [1, 0, 2, 0, -0.5]
[sos, g] = tf2sos(b,a);
display(g); display(sos);
