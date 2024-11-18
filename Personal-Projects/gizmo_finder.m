clc
close all
clear

% Valheim
% Darctide
%
% Gizmo value finder
% This code takes [d0] in degrees and returns [Gizmo_value]

d0 = 69; % Enter total degrees

diff = 1; % Default difference

    
    for n = 2:256 % Number of possible gizmo values

x{n} = 360 / (2*(n)); % degree per increment

inc{n} = d0 / (x{n}); % total increments

diff(n) = abs(inc{n} - floor(inc{n})); % difference from integer

    end


min = min(diff); % finds minimum difference value

Gizmo_value = find(diff == min) % enter this value into gizmo