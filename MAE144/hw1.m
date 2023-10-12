% MAE 144
% Homework 1
% Brian Fader - A16601100
close all
clear
clc
% Problem 2
% Part a
% G(s) = (s+2)(s-2)(s+5)(s-5)/
%        (s+1)(s-1)(s+3)(s-3)(s+6)(s-6)
% G(s) = b(s)/a(s)
b = RR_poly([-2 2 -5 5],1);
a = RR_poly([-1 1 -3 3 -6 6],1);
f1 = RR_poly([-1 -1 -3 -3 -6 -6],1);
[x1,y1] = RR_diophantine(a,b,f1);
test1 = trim(a*x1 + b*y1);
residual1 = norm(f1-test1)

% residual1 =
%   1.1369e-13
% Therefore, it works

% Part b
% The controller in part a is improper

f2 = RR_poly([-1 -1 -3 -3 -6 -6 -20 -20 -20 -20 -20],1);
[x2,y2] = RR_diophantine(a,b,f2);
test2 = trim(a*x2 + b*y2);
residual2 = norm(f2-test2)
% residual2 =
%   1.0832e-05
% K = 5, there were 5 additional poles needed
% By adding additional poles, we were able to make the transfer function
% semi-proper.  However, the more poles that we add, the larger the
% residual gets.  Compared to the residual in part 1 which is practically
% 0, the residual in part 2 is much larger.






