% Example 1.35

syms t
d(t) = dirac(t)
z(t) = t^2 + 3*t - 1;
t1(t) = z * d(t-1);
t2(t) = z * diff( d(t-1), t ); 	 % diff(): υπολογισμός παραγώγου
t3(t) = z * diff( d(t-1), t, 2 );
t4(t) = z * diff( d(t-1), t, 3 );
x1 = int( t1(t), 0, inf )
x2 = int( t2(t), 0, inf )
x3 = int( t3(t), 0, inf )
x4 = int( t4(t), 0, inf )