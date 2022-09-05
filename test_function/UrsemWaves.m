function value = UrsemWaves(x)
%----------------------------------------------------------
% UrsemWaves Function for Nonlinear Optimization
%
% -0.9 <= x1 <= 1.2  
% -1.2 <= x2 <= 1.2
% fmin = -8.5536;
% xmin = [1.2,1.2]; 
%----------------------------------------------------------

x1 = x(:,1);
x2 = x(:,2);
value = -0.9.*x1.^2-3.5.*x1.*x2.^3+4.7.*cos(3.*x1-(2+x1).*x2.^2).*sin(2.5.*pi.*x1);