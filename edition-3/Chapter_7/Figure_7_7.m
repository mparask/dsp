% Figure 7.7

clear all; clc; clf

n = -20:20; u = ones(size(n)); u(n<0) = 0;
x = u .* cos(pi.*n/5) .* exp(-0.25.*n);

[y1,m1] = sigshift(x,n,5);
[y2,m2] = sigshift(x,n,-5);

[z, m] = sigfold(x, n);

subplot(221); stem(n,x); ylim([-0.5 1]); xlim([-10 10]); grid on; title('Αρχικό σήμα')
subplot(222); stem(m,z); ylim([-0.5 1]); xlim([-10 10]); grid on; title('Αντιστροφή')
subplot(223); stem(m1,y1); ylim([-0.5 1]); xlim([-10 10]); grid on; title('Kαθυστέρηση n_0=5 ')
subplot(224); stem(m2,y2); ylim([-0.5 1]); xlim([-10 10]); grid on; title('Προήγηση n_0=-5')