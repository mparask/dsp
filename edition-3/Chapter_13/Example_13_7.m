% Example 13.7

Fs = 10000; % Συχνότητα δειγματοληψίας
% Συχνότητες αποκοπής στο διάστημα [0,π]
%wp = 0.2*pi; ws = 0.25*pi; % 1η περίπτωση
%wp = 0.2*pi; ws = 0.30*pi; %2η περίπτωση
wp = 0.2*pi; ws = 0.4*pi;  %3η περίπτωση

% Συχνότητες αποκοπής στο διάστημα [0,Fs/2]
fp = wp*Fs/(2*pi);  fs = ws*Fs/(2*pi);
As = 50;    % Εξασθένιση στη ζώνη αποκοπής (dB)
R = 0.1;    % Αρχική τιμή κυμάτωσης στη ζώνη διέλευσης
i = 0;
while R <= 2.0
  i = i+1; R = R+0.05; Rp(i) = R;
  % Απόκλιση πλάτους στις ζώνες διέλευσης και αποκοπής 
  dp = (10^(R/20)-1)/(10^(R/20)+1);
  ds = (1+dp)*(10^(-As/20));
  % Καθορισμός προδιαγραφών φίλτρου
  F = [fs fp]; A = [0 1]; Deviation = [dp ds]; 
  % Υπολογισμός βέλτιστης τάξης φίλτρου με firpmord()
  [No(i), Fo, Ao, Weights] = firpmord(F, A, Deviation, Fs);
  % Υπολογισμός βέλτιστης τάξης φίλτρου με Kaiser
  Nk(i) = ceil((-20*log10(sqrt(dp*ds))-13)/(2.285*(ws-wp))-1);
end

% 1η περίπτωση
% subplot(131); plot(No,Rp,'b'); grid on; axis([0,100,0,2]); 
% hold on; plot(Nk,Rp,'r'); grid on; title('Δω = 0.05π'); hold off;

% 2η περίπτωση
% subplot(132); plot(No,Rp,'b'); grid on; axis([0,100,0,2]); 
% hold on; plot(Nk,Rp,'r'); grid on; title('Δω = 0.1π'); hold off;

% 3η περίπτωση
 subplot(133); plot(No,Rp,'b'); grid on; axis([0,100,0,2]); 
 hold on; plot(Nk,Rp,'r'); grid on; title('Δω = 0.2π'); hold off;
