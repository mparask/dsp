% Example 1.13
syms t; u(t)= heaviside(t); 
ue(t) = 0.5* ( u(t) + u(-t) ); 
uo(t) = 0.5* ( u(t) - u(-t) );
subplot(211); ezplot(ue(t), [-2 2]); grid on
subplot(212); ezplot(uo(t), [-2 2]); grid on
