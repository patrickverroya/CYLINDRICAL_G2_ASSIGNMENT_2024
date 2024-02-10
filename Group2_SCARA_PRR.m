disp("SCARA-PRR")

syms a1 a2 a3 a4

%% Link Lengths
a1 = 5;
a2 = 3;
a3 = 3;
a4 = 4;
d1 = 5

%% D-H Parameters: theta, d, r, alpha, offset
% if prismatic joint: theta = theta, d = 0, offset = 1, after offset put the value of d
% if revolute joint: theta = 0,offset = 0, after offset put the value of theta

H0_1 = Link([0,0,0,0,1,a1]); 
H0_1.qlim = [0 d1];

H1_2 = Link([0,0,a2,0,0,0]); 
H1_2.qlim = pi/180*[0];

H2_3 = Link([0,0,a3,0,0,0]); 
H2_3.qlim = pi/180*[-90 90];

H3_4 = Link([0,0,a4,0,0,0]); 
H3_4.qlim = pi/180*[-90 90];

%% Build the Mechanical Manipulator
Scara_PRR = SerialLink([H0_1 H1_2 H2_3 H3_4], 'name', 'SCARA_PRR')
Scara_PRR.plot([0 0 0 0], 'workspace', [-15 15 -15 15 -15 15])
Scara_PRR.teach

