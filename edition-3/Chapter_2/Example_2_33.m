% Example 2.33

Step = 0.01; 
t = 0 : Step : 2;                        % Ορισμός u(t)-u(t-2)
x = sin(2*pi*t) .* ones(1, length(t));   % Ορισμός x(t)
h1 = t .* exp(-t) .* ones(1, length(t)); % Ορισμός h1(t)
h2 = exp(-2*t) .* ones(1, length(t));    % Ορισμός h2(t)
h3 = exp(-t) .* ones(1, length(t));      % Ορισμός h3(t)
heq = conv(h1+h2, h3) * Step;            % Ισοδύναμη κρουστική απόκριση
y = conv(heq, x) * Step;                 % Εύρεση εξόδου y(t)=x(t)*heq(t) με συνέλιξη
ty = 0 : Step : 3*max(t);                

% Σχεδιασμός διαγραμμάτων
subplot(121); plot(t, x); xlim([-1 6]); grid on; title('(α) Είσοδος x(t)')
subplot(122); plot(ty, y, 'm'); xlim([-1 6]); grid on; title('(β) Έξοδος y(t)')