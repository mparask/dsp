% Υλοποίηση κρουστικής απόκρισης του φίλτρου στο Matlab
function [hd, n] = imp_resp(wc,N) % wc συχνότητα αποκοπής
a = (N-1)/2;
m = [0:1:(N-1)];
n = m - a + eps;
hd = sin(wc*n)./(pi*n);
end
