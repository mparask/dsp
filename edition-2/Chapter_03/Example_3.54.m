% Example 3.54
clc; clear all; clf

syms t w
r = 1; T0 = 4; N = 20;
w0 = (2*pi)/T0;
u(t) = heaviside(t);
xT(t) = u(t+r/2) - u(t-r/2); % ���������� ���� xT(t)
XT(w) = fourier(xT(t), w);   % ������. Fourier ����������� �������
XT(w) = simplify(XT(w))
XTpos = subs(XT(w), w, w0:w0:N*w0);
XTneg = subs(XT(w), w, -N*w0:w0:-w0);
XTT = [XTneg r XTpos ];
subplot(211); ezplot(XT(w), [-100,100]); ylim([-1 r+0.5]); grid on
subplot(212); stem(-N*w0:w0:N*w0, XTT); ylim([-1 r+0.5]); grid on






