% Example 9.8

N = 64;                    % �: ����� ���������� ��� DFT
a = 0.9;  w0 = 9*pi/4;     % ������� ����� � ��� �0

n = [0:N-1];               % ������� ������
x = a.^n .* sin(n*w0);     % x[n] = a^n sin(n*w0) u[n]

X = fft(x);                % ����������� DFT
w = 0:2*pi/N:2*pi-2*pi/N;  % ������� ����������
w_norm = (w-pi)/pi;        % ���������������� ���������

% ���������� ������� x[n] = a^n sin(n*w0) u[n]
subplot(311); stem(n,x); xlabel('n'); title('x[n]'); grid on

% ���������� �������� ������� |X(e^j�)| 
subplot(312); plot(w_norm,fftshift(abs(X))); grid on;
xlabel('���������������� ���������'); title('|X(e^j^�)|'); 

% ���������� �������� ����� <X(e^j�) 
subplot(313); plot(w_norm,fftshift(angle(X))); grid on;
xlabel('���������������� ���������'); title('<X(e^j^�)'); 
