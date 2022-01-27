clc; clear all

N = 10; Rp = 2; Rs = 3;

%[z1,p1,k1] = buttap(N)

%[z2,p2,k2] = cheb1ap(N, Rp)

%[z3,p3,k3] = cheb2ap(N, Rs)

%[z4,p4,k4] = ellipap(N, Rp, Rs)


[a1,b1] = buttap(N)

[a2,b2] = cheb1ap(N, Rp)

[a3,b3] = cheb2ap(N, Rs)

[a4,b4] = ellipap(N, Rp, Rs)

