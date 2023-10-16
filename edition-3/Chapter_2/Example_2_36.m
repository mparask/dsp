% Example 2.36

Step = 0.01; 
t1 = 0 : Step : 2;                   
t2 = 2 : Step : 8;

x1 = 1 - exp(-t1);
x2 = (exp(1)^2 - 1) *exp(-t2);

t = [t1, t2]; x = [x1, x2];

% Σχεδιασμός διαγράμματος 2.25
plot(t, x); xlim([-1 8]); grid on; title('Έξοδος y(t)')