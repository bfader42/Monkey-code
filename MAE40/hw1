% Brian Fader - A16601100
% MAE 40 - HW 1
% 
% 
% script RR_Wye_Delta
% Computes the Wye Delta transformation, and apply it
% to compute the equivalent resistance of a Wheatstone Bridge of resistors.
% Renaissance Robotics codebase, Chapter 10, https://github.com/tbewley/RR
% Copyright 2021 by Thomas Bewley, distributed under Modified BSD License.
clear all;
clc;
close all;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Problem 10.1
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
syms C1 C2 C3 C4 C5 Ca Cb Cc    % Set symbolic variables

eqn1= (1/Ca)+(1/Cb)==1/(1/(1/C1)+1/((1/C2)+(1/C3)));        % Equation 1
eqn2= (1/Ca)+(1/Cc)==1/(1/(1/C2)+1/((1/C1)+(1/C3)));        % Equation 2
eqn3= (1/Cb)+(1/Cc)==1/(1/(1/C3)+1/((1/C1)+(1/C2)));        % Equation 3
A=solve(eqn1,eqn2,eqn3,Ca,Cb,Cc);        % Solve the 3 linear equations for Ca, Cb, and Cc
B=solve(eqn1,eqn2,eqn3,C1,C2,C3);        % Solve the 3 linear equations for C1, C2, and C3
Ca=simplify(A.Ca);Cb=simplify(A.Cb);Cc=simplify(A.Cc);      % Simplify the solutions for Ca, Cb, and Cc
C1=simplify(B.C1);C2=simplify(B.C2);C3=simplify(B.C3);       % Simplify the solutions for C1, C2, and C3
Ceq1 = 1/Ca;    % First part for equivalent capacitance
Ceq2 = 1/( (1/Cb) + (1/C4) );    % Second part for equivalent capacitance
Ceq3 = 1/( (1/Cc) + (1/C5) );    % Third part for equivalent capacitance
Ceq4 = Ceq2 + Ceq3;    % Fourth part for equivalent capacitance
Ceq = 1/( Ceq1 + Ceq4 ) % Equivalent capacitance
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Problem 10.2
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
syms L1 L2 L3 L4 L5 La Lb Lc    % Set symbolic variables

eqn1= La+Lb==1/(1/L1+1/(L2+L3));        % Equation 1
eqn2= La+Lc==1/(1/L2+1/(L1+L3));        % Equation 2
eqn3= Lb+Lc==1/(1/L3+1/(L1+L2));        % Equation 3
A=solve(eqn1,eqn2,eqn3,La,Lb,Lc);        % Solve the 3 linear equations for La, Lb, and Lc
B=solve(eqn1,eqn2,eqn3,L1,L2,L3);        % Solve the 3 linear equations for L1, L2, and L3
La=simplify(A.La);Lb=simplify(A.Lb);Lc=simplify(A.Lc);      % Simplify the solutions for La, Lb, and Lc
L1=simplify(B.L1);L2=simplify(B.L2);L3=simplify(B.L3);       % Simplify the solutions for L1, L2, and L3

Lb4 = Lb + L4;  % Equivalent inductance between Lb & L4
Lc5 = Lc + L5;  % Equivalent inductance between Lc & L5
Lb4c5 = 1/( (1/Lc5) + (1/Lb4) );  % Equivalent inductance between Lc5 & Lb4
Leq = La + Lb4c5;  % Equivalent inductance

% For balanced wheatstone bridge circuits, L1/L4 = L2/L5, therefore L5 =
% L2*L4/L1
% Let L2 = 1 henry
L2 = 1;
L5 = L2*(L4/L1)
%%
clc
clear all
close all
num = [1];
den = [1 0.5 1];
G = tf(num,den);
bode(G),grid;
damp(G)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Problem 9.1
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

s = tf('s');         % transfer function s
d = 0.1;            % value for d
n1 = 1;     % step sizes
G1 = pade(exp(-d*s),n1);            % G for n = 1
pzplot(tf([-1 20],[1 20]));         % plot G1
%%
s = tf('s');         % transfer function s
d = 0.1;            % value for d
n2 = 2;
G2 = pade(exp(-d*s),n2);            % G for n = 2
pzplot(tf([1 -60 1200],[1 60 1200]));         % plot G2
%%
s = tf('s');         % transfer function s
d = 0.1;            % value for d
n4 = 4;
G3 = pade(exp(-d*s),n4);            % G for n = 4
pzplot(tf([1 -200 18000 -8.4*10^5 1.68*10^7],[1 200 18000 8.4*10^5 1.68*10^7]));         % plot G3
%%
s = tf('s');         % transfer function s
d = 0.1;            % value for d
n8 = 8;
G4 = pade(exp(-d*s),n8);            % G for n = 8
pzplot(tf([1 -720 252000 -5.544*10^7 8.316*10^9 -8.649*10^11 6.054*10^13 -2.595*10^15 5.189*10^16],[1 720 252000 5.544*10^7 8.316*10^9 8.649*10^11 6.054*10^13 2.595*10^15 5.189*10^16]));         % plot G4
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Problem 9.12
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Part a
%%%%%%%%
% Gta = 1/(s+1)
s = tf('s');         % transfer function s
Gta = tf([1],[1 1]); % Gta transfer function
bode(Gta),grid;     % bode plot for Gta
%%
%%%%%%%%%
% Part b
%%%%%%%%%
% Gtb = (s-1)/1
s = tf('s');         % transfer function s
Gtb = tf([1 -1],[1]); % Gtb transfer function
bode(Gtb),grid;     % bode plot for Gtb
%%
%%%%%%%%%
% Part c
%%%%%%%%%
% Gtc = Gta*Gtb = (s-1)/(s+1)
s = tf('s');         % transfer function s
Gtc = tf([1 -1],[1 1]); % Gtc transfer function
bode(Gtc),grid;     % bode plot for Gtc
%%
%%%%%%%%%
% Part d
%%%%%%%%%
% Gtd = (s^2 + 101s +100)/s
s = tf('s');         % transfer function s
Gtd = tf([1 101 100],[1 0]); % Gtd transfer function
bode(Gtd),grid;     % bode plot for Gtd
%%
%%%%%%%%%
% Part e
%%%%%%%%%
% Gte = s/(s^2 + 101s + 100)
s = tf('s');         % transfer function s
Gte = tf([1 0],[1 101 100]); % Gte transfer function
bode(Gte),grid;     % bode plot for Gte
%%
%%%%%%%%%
% Part f
%%%%%%%%%
% Gtf = 1/(s^2 + s + 1)
s = tf('s');         % transfer function s
Gtf = tf([1],[1 1 1]); % Gtf transfer function
bode(Gtf),grid;     % bode plot for Gtf

