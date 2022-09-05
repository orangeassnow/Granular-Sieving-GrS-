function value = Price04(x)
%----------------------------------------------------------
% Price04 Function for Nonlinear Optimization
%
% -50 <= x1,x2 <= 50
% fmin = 0;
% xmin = [0,0];[2,4];[1.464,-2.506];
%----------------------------------------------------------

x1 = x(:,1);
x2 = x(:,2);
a = x2.*(2.*x1.^3-x2.^2);
b = 6.*x1-x2.*(x2-1);
value = a.^2+b.^2;
end