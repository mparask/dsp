% Example 5.3

% ���������� ���������� �������
Dt = 0.0001; t = 0:Dt:1;
xa = 2*cos(8*pi*t) - sin(12*pi*t);
% ���������� ���������� ������� (������� ������ msec)
figure(1); subplot(211); plot(t*1000,xa,'r'); grid on;
xlabel('t (msec)'); ylabel('xa(t)'); ylim([-4,4]); 
title('�. ��������� ����'); hold on;
% ���������� ������� ��������� ������ (�������)
Ts = 0.02; n = 0:1:50; nTs=n*Ts;
xs = 2*cos(8*pi*nTs) - sin(12*pi*nTs);
% ���������� �������� ������� ��� Ts=0.02 sec/sample
subplot(212); stem(n*Ts*1000,xs); grid on;
xlabel('t (msec)'); ylabel('xs(t)'); ylim([-4,4]);
title('�.���� ��������� ������'); hold off

% ����������� ��������������� Fourier �������� ������ Xa(W)
fm = 20; Wm = 2*pi*fm;          % ������� ��������� ��������
K = 500;                        % ������ ������� ����������� ���. Fourier
k = 0:1:K; W = k*Wm/K;          % ������� ��������� �
Xa = xa * exp(-j*t'*W) * Dt; 	% ������� ��������������� Fourier
Xa = abs(Xa);                   % ������� ���� �� ����� ��� Fourier
W = [-fliplr(W), W(2:K+1)]; 	% ���������� ��������� ������ ��������
Xa = [fliplr(Xa), Xa(2:K+1)]; 

% ����������� ��������������� Fourier ��������� ������ Xs(w)
w = pi*k/K;                     % �������� ��������� �
Xs = xs * exp(-j*n'*w) * Dt; 	% ������� DTFT
Xs = abs(Xs);                   % ������� ���� ��� DTFT
w = [-fliplr(w), w(2:K+1)]; 	% ���������� ��������� ������ ��������
Xs = [fliplr(Xs), Xs(2:K+1)]; 

% ���������� �������� Xa(W), Xs(w)
figure(2)
subplot(211); plot(W/(2*pi), Xa); % ���������� �������� Xa(W)
xlabel('��������� (Hz)'); ylabel('Xa(jW)'); grid on
title('��������������� Fourier �������� ������')
subplot(212); plot(w/(pi), Xs); % ���������� �������� Xs(w)
xlabel('��������� �� ������� �'); ylabel('Xs(jw)'); grid on
title('��������������� Fourier ��������� ������')
