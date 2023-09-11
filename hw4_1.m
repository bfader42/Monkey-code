% script RR_Ex10_02_passive_filters
% Solves the basic equations of four simple passive filters.
% These examples are easy to solve by hand, but illustrate how
% to put a few linear equations into A*x=b form and solve using Matlab.
% Renaissance Robotics codebase, Chapter 10, https://github.com/tbewley/RR
% Copyright 2023 by Thomas Bewley, distributed under Modified BSD License.
%

clear, close all, syms s L R C VoutB Vi Vbr ILB 

%     Vm   Vout   I1   ID   IC   IL   IR
A  =[ 0     1     0     0   0     0   -R;     % Vout - IR*R = 0
      0   -C*s    0     0   1     0    0; %IC - C*s*Vout = -C*VoutB
      1     0     0     0   0     0    0; % Vm = Vi
      1     0     0     0   0    -s*L  0; % Vm - s*L*IL = -L*ILB
      0     0     1    -1   0    -1    0; % I1 - ID - IL = 0
      0     0     0     1  -1     0   -1; % ID - IC - IR = 0
      1    -1     0     0   0     0    0]; % Vm - Vout = Vbr
     
b  =[0;-C*VoutB;Vi;-L*ILB;0;0;Vbr];
x=A\b; 
Vo_bb=simplify(x(2))
IL_bb=simplify(x(6))
