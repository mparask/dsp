% Example 8.31

% FIR: y[n] = x[n] + 2x[n-1] - 0.5x[n-4]
a = 1;  b = [1, 0, 2, 0, -0.5]
[sos, g] = tf2sos(b,a);
display(g); display(sos);