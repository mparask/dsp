function [y,n] = sigshift(x,m,n0)
% implements y(n) = x(n-n0)
% -------------------------
% [y,n] = sigshift(x,m,n0)
%
n = m+n0; y = x;

%y = zeros(m);
%if shift >0
%  y(shift+1:end) = x(1:end-shift);
%elseif shift <0
%  y(1:end+shift) = x(-shift+1:end);
%end
