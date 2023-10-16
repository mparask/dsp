% Example 4.60

syms t w
r = 1; T0 = 4; N = 20;
w0 = (2*pi)/T0;
u(t) = heaviside(t);
xT(t) = u(t+r/2) - u(t-r/2);  	% Αποκομμένο σήμα xT(t)
XT(w) = fourier(xT(t), w);   	% Μετασχηματισμός Fourier αποκομμένου σήματος
XT(w) = simplify(XT(w))
XTpos = subs(XT(w), w, w0:w0:N*w0);
XTneg = subs(XT(w), w, -N*w0:w0:-w0);
XTT = [XTneg r XTpos];
subplot(211); fplot(XT(w),[-40,40]); ylim([-0.5 r+0.2]); grid on
subplot(212); stem(-N*w0:w0:N*w0, XTT, 'm'); ylim([-0.5 r+0.2]); grid on