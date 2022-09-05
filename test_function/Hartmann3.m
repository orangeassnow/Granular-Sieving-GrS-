function value = Hartmann3(x)
%----------------------------------------------------------
% Hartmann3 Function for Nonlinear Optimization
%
% 0 <= x1 <= 1                  
% 0 <= x2 <= 1
% 0 <= x3 <= 1
% fmin = -3.86278214782076;
% xmin = [0.1,0.55592003,0.85218259];  
%----------------------------------------------------------
m = size(x,1);
%if size(x,1) == 1
%  x = x';
%end
a = [3, 0.1, 3, 0.1;
     1, 10, 10, 10;
     30, 35, 30, 35];
p = [ 0.3689, 0.4699, 0.1091, 0.03815;
      0.117, 0.4387, 0.8732, 0.5743;
      0.2673, 0.747, 0.5547, 0.8828];
c = [1, 1.2, 3, 3.2];
d = zeros(m,4);
for i=1:4
    d(:,i) = sum(repmat(a(:,i)',m,1).*(x - repmat(p(:,i)',m,1)).^2,2);
end
value = -sum(repmat(c,m,1).*exp(-d),2); 