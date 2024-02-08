disp("SCARA-V3")

syms a1 a2 a3 a4

%% Link Lengths
a1 = 5;
a2 = 10;
a3 = 5;
a4 = 10;

%% D-H Parameters: theta, d, r, alpha, offset
% if prismatic joint: theta = theta, d = 0, offset = 1, after offset put the value of d
% if revolute joint: theta = 0,offset = 0, after offset put the value of theta


h
